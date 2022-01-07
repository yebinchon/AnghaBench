
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct passwd {int pw_gid; int pw_uid; } ;
typedef int pid_t ;
typedef int h2o_configurator_command_t ;


 int AF_UNIX ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int H2O_SOMAXCONN ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,void*,int) ;
 scalar_t__ chown (int ,int ,int ) ;
 int close (int) ;
 int errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int h2o_configurator_errprintf (int *,int *,char*,char const*,...) ;
 int h2o_error_printf (char*,char* const,char const*) ;
 int h2o_spawnp (char* const,char* const*,int*,int ) ;
 scalar_t__ listen (int,int ) ;
 scalar_t__ pipe (int*) ;
 int snprintf (int ,int,char*,char const*) ;
 int socket (int ,int ,int ) ;
 char const* strerror (int ) ;
 int unlink (int ) ;

__attribute__((used)) static int create_spawnproc(h2o_configurator_command_t *cmd, yoml_t *node, const char *dirname, char *const *argv,
                            struct sockaddr_un *sa, struct passwd *pw)
{
    int ret, listen_fd = -1, pipe_fds[2] = {-1, -1};


    sa->sun_family = AF_UNIX;
    ret = snprintf(sa->sun_path, sizeof(sa->sun_path), "%s/_", dirname);
    if (ret < 0 || ret >= sizeof(sa->sun_path)) {
        h2o_configurator_errprintf(cmd, node, "unix socket path too long: %s", dirname);
        goto Error;
    }


    if ((listen_fd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
        h2o_configurator_errprintf(cmd, node, "socket(2) failed: %s", strerror(errno));
        goto Error;
    }
    if (bind(listen_fd, (void *)sa, sizeof(*sa)) != 0) {
        h2o_configurator_errprintf(cmd, node, "bind(2) failed: %s", strerror(errno));
        goto Error;
    }
    if (listen(listen_fd, H2O_SOMAXCONN) != 0) {
        h2o_configurator_errprintf(cmd, node, "listen(2) failed: %s", strerror(errno));
        goto Error;
    }

    if (pw != ((void*)0) && chown(sa->sun_path, pw->pw_uid, pw->pw_gid) != 0) {
        h2o_configurator_errprintf(cmd, node, "chown(2) failed to change ownership of socket:%s:%s", sa->sun_path, strerror(errno));
        goto Error;
    }


    if (pipe(pipe_fds) != 0) {
        h2o_configurator_errprintf(cmd, node, "pipe(2) failed: %s", strerror(errno));
        pipe_fds[0] = -1;
        pipe_fds[1] = -1;
        goto Error;
    }
    if (fcntl(pipe_fds[1], F_SETFD, FD_CLOEXEC) < 0)
        goto Error;


    int mapped_fds[] = {listen_fd, 0,
                        pipe_fds[0], 5,
                        -1};
    pid_t pid = h2o_spawnp(argv[0], argv, mapped_fds, 0);
    if (pid == -1) {
        h2o_error_printf("[lib/handler/fastcgi.c] failed to launch helper program %s:%s\n", argv[0], strerror(errno));
        goto Error;
    }

    close(listen_fd);
    listen_fd = -1;
    close(pipe_fds[0]);
    pipe_fds[0] = -1;

    return pipe_fds[1];

Error:
    if (pipe_fds[0] != -1)
        close(pipe_fds[0]);
    if (pipe_fds[1])
        close(pipe_fds[1]);
    if (listen_fd != -1)
        close(listen_fd);
    unlink(sa->sun_path);
    return -1;
}
