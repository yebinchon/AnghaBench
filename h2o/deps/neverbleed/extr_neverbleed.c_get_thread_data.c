
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_neverbleed_thread_data_t {scalar_t__ self_pid; int fd; } ;
typedef int ssize_t ;
typedef scalar_t__ pid_t ;
struct TYPE_3__ {int thread_key; int auth_token; int sun_; } ;
typedef TYPE_1__ neverbleed_t ;


 scalar_t__ EINTR ;
 int PF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,void*,int) ;
 int dief (char*) ;
 scalar_t__ errno ;
 scalar_t__ getpid () ;
 struct st_neverbleed_thread_data_t* malloc (int) ;
 struct st_neverbleed_thread_data_t* pthread_getspecific (int ) ;
 int pthread_setspecific (int ,struct st_neverbleed_thread_data_t*) ;
 int set_cloexec (int) ;
 int socket (int ,int,int ) ;
 int write (int,int ,int) ;

struct st_neverbleed_thread_data_t *get_thread_data(neverbleed_t *nb)
{
    struct st_neverbleed_thread_data_t *thdata;
    pid_t self_pid = getpid();
    ssize_t r;

    if ((thdata = pthread_getspecific(nb->thread_key)) != ((void*)0)) {
        if (thdata->self_pid == self_pid)
            return thdata;

        close(thdata->fd);
    } else {
        if ((thdata = malloc(sizeof(*thdata))) == ((void*)0))
            dief("malloc failed");
    }

    thdata->self_pid = self_pid;




    if ((thdata->fd = socket(PF_UNIX, SOCK_STREAM, 0)) == -1)
        dief("socket(2) failed");
    set_cloexec(thdata->fd);

    while (connect(thdata->fd, (void *)&nb->sun_, sizeof(nb->sun_)) != 0)
        if (errno != EINTR)
            dief("failed to connect to privsep daemon");
    while ((r = write(thdata->fd, nb->auth_token, sizeof(nb->auth_token))) == -1 && errno == EINTR)
        ;
    if (r != sizeof(nb->auth_token))
        dief("failed to send authentication token");
    pthread_setspecific(nb->thread_key, thdata);

    return thdata;
}
