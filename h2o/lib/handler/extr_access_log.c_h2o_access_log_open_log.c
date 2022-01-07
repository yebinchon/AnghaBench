
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
typedef int pid_t ;


 int AF_UNIX ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int O_APPEND ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_WRONLY ;
 int SOCK_STREAM ;
 int S_IFMT ;
 int S_IFSOCK ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int h2o_error_printf (char*,char const*,...) ;
 int h2o_perror (char*) ;
 int h2o_spawnp (char*,char**,int*,int ) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int open (char const*,int,int) ;
 scalar_t__ pipe (int*) ;
 int socket (int ,int ,int ) ;
 int stat (char const*,struct stat*) ;
 int strcpy (int ,char const*) ;
 int strerror (int ) ;
 int strlen (char const*) ;

int h2o_access_log_open_log(const char *path)
{
    int fd;

    if (path[0] == '|') {
        int pipefds[2];
        pid_t pid;
        char *argv[4] = {"/bin/sh", "-c", (char *)(path + 1), ((void*)0)};

        if (pipe(pipefds) != 0) {
            h2o_perror("pipe failed");
            return -1;
        }
        if (fcntl(pipefds[1], F_SETFD, FD_CLOEXEC) == -1) {
            h2o_perror("failed to set FD_CLOEXEC on pipefds[1]");
            return -1;
        }

        int mapped_fds[] = {pipefds[0], 0,
                            -1};
        if ((pid = h2o_spawnp(argv[0], argv, mapped_fds, 0)) == -1) {
            h2o_error_printf("failed to open logger: %s:%s\n", path + 1, strerror(errno));
            return -1;
        }

        close(pipefds[0]);
        fd = pipefds[1];
    } else {
        struct stat st;
        int ret;

        ret = stat(path, &st);
        if (ret == 0 && (st.st_mode & S_IFMT) == S_IFSOCK) {
            struct sockaddr_un sa;
            if (strlen(path) >= sizeof(sa.sun_path)) {
                h2o_error_printf("path:%s is too long as a unix socket name", path);
                return -1;
            }
            if ((fd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
                h2o_error_printf("failed to create socket for log file:%s:%s\n", path, strerror(errno));
                return -1;
            }
            memset(&sa, 0, sizeof(sa));
            sa.sun_family = AF_UNIX;
            strcpy(sa.sun_path, path);
            if (connect(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
                h2o_error_printf("failed to connect socket for log file:%s:%s\n", path, strerror(errno));
                close(fd);
                return -1;
            }

        } else {
            if ((fd = open(path, O_CREAT | O_WRONLY | O_APPEND | O_CLOEXEC, 0644)) == -1) {
                h2o_error_printf("failed to open log file:%s:%s\n", path, strerror(errno));
                return -1;
            }
        }
    }

    return fd;
}
