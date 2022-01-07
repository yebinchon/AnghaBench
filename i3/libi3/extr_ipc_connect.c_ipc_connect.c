
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_LOCAL ;
 int EXIT_FAILURE ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOCK_STREAM ;
 scalar_t__ connect (int,struct sockaddr const*,int) ;
 int err (int ,char*,...) ;
 int fcntl (int,int ,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int memset (struct sockaddr_un*,int ,int) ;
 char* root_atom_contents (char*,int *,int ) ;
 int socket (int ,int ,int ) ;
 char* sstrdup (char const*) ;
 int strncpy (int ,char*,int) ;

int ipc_connect(const char *socket_path) {
    char *path = ((void*)0);
    if (socket_path != ((void*)0)) {
        path = sstrdup(socket_path);
    }

    if (path == ((void*)0)) {
        if ((path = getenv("I3SOCK")) != ((void*)0)) {
            path = sstrdup(path);
        }
    }

    if (path == ((void*)0)) {
        path = root_atom_contents("I3_SOCKET_PATH", ((void*)0), 0);
    }

    if (path == ((void*)0)) {
        path = sstrdup("/tmp/i3-ipc.sock");
    }

    int sockfd = socket(AF_LOCAL, SOCK_STREAM, 0);
    if (sockfd == -1)
        err(EXIT_FAILURE, "Could not create socket");

    (void)fcntl(sockfd, F_SETFD, FD_CLOEXEC);

    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_LOCAL;
    strncpy(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    if (connect(sockfd, (const struct sockaddr *)&addr, sizeof(struct sockaddr_un)) < 0)
        err(EXIT_FAILURE, "Could not connect to i3 on socket %s", path);
    free(path);
    return sockfd;
}
