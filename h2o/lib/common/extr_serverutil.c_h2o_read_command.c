
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
typedef int pid_t ;
struct TYPE_8__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
struct TYPE_9__ {int size; } ;
typedef TYPE_2__ h2o_buffer_t ;


 scalar_t__ EINTR ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int cloexec_mutex ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int h2o_buffer_dispose (TYPE_2__**) ;
 int h2o_buffer_init (TYPE_2__**,int *) ;
 TYPE_1__ h2o_buffer_reserve (TYPE_2__**,int) ;
 int h2o_socket_buffer_prototype ;
 int h2o_spawnp (char const*,char**,int*,int) ;
 scalar_t__ pipe (int*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int,int ,int ) ;
 int waitpid (int,int*,int ) ;

int h2o_read_command(const char *cmd, char **argv, h2o_buffer_t **resp, int *child_status)
{
    int respfds[2] = {-1, -1};
    pid_t pid = -1;
    int mutex_locked = 0, ret = -1;

    h2o_buffer_init(resp, &h2o_socket_buffer_prototype);

    pthread_mutex_lock(&cloexec_mutex);
    mutex_locked = 1;


    if (pipe(respfds) != 0)
        goto Exit;
    if (fcntl(respfds[0], F_SETFD, O_CLOEXEC) < 0)
        goto Exit;


    int mapped_fds[] = {respfds[1], 1,
                        -1};
    if ((pid = h2o_spawnp(cmd, argv, mapped_fds, 1)) == -1)
        goto Exit;
    close(respfds[1]);
    respfds[1] = -1;

    pthread_mutex_unlock(&cloexec_mutex);
    mutex_locked = 0;


    while (1) {
        h2o_iovec_t buf = h2o_buffer_reserve(resp, 8192);
        ssize_t r;
        while ((r = read(respfds[0], buf.base, buf.len)) == -1 && errno == EINTR)
            ;
        if (r <= 0)
            break;
        (*resp)->size += r;
    }

Exit:
    if (mutex_locked)
        pthread_mutex_unlock(&cloexec_mutex);
    if (pid != -1) {

        pid_t r;
        while ((r = waitpid(pid, child_status, 0)) == -1 && errno == EINTR)
            ;
        if (r == pid) {

            ret = 0;
        }
    }
    if (respfds[0] != -1)
        close(respfds[0]);
    if (respfds[1] != -1)
        close(respfds[1]);
    if (ret != 0)
        h2o_buffer_dispose(resp);

    return ret;
}
