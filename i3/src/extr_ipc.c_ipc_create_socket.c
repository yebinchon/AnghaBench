
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_LOCAL ;
 int DEFAULT_DIR_MODE ;
 int DLOG (char*,char*) ;
 int FD_CLOEXEC ;
 int FREE (char*) ;
 int F_SETFD ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 char* current_socketpath ;
 char* dirname (char*) ;
 int fcntl (int,int ,int ) ;
 int free (char*) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int mkdirp (char const*,int ) ;
 int path_exists (char const*) ;
 int perror (char*) ;
 char* resolve_tilde (char const*) ;
 int set_nonblock (int) ;
 int socket (int ,int ,int ) ;
 char* sstrdup (char*) ;
 int strncpy (int ,char*,int) ;
 int unlink (char*) ;

int ipc_create_socket(const char *filename) {
    int sockfd;

    FREE(current_socketpath);

    char *resolved = resolve_tilde(filename);
    DLOG("Creating IPC-socket at %s\n", resolved);
    char *copy = sstrdup(resolved);
    const char *dir = dirname(copy);
    if (!path_exists(dir))
        mkdirp(dir, DEFAULT_DIR_MODE);
    free(copy);


    unlink(resolved);

    if ((sockfd = socket(AF_LOCAL, SOCK_STREAM, 0)) < 0) {
        perror("socket()");
        free(resolved);
        return -1;
    }

    (void)fcntl(sockfd, F_SETFD, FD_CLOEXEC);

    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_LOCAL;
    strncpy(addr.sun_path, resolved, sizeof(addr.sun_path) - 1);
    if (bind(sockfd, (struct sockaddr *)&addr, sizeof(struct sockaddr_un)) < 0) {
        perror("bind()");
        free(resolved);
        return -1;
    }

    set_nonblock(sockfd);

    if (listen(sockfd, 5) < 0) {
        perror("listen()");
        free(resolved);
        return -1;
    }

    current_socketpath = resolved;
    return sockfd;
}
