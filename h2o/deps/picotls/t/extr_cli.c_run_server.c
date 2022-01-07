
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int ptls_handshake_properties_t ;
typedef int ptls_context_t ;
typedef int on ;


 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 int accept (int,int *,int ) ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int fprintf (int ,char*,...) ;
 int handle_connection (int,int *,int *,char const*,int *,int,int ) ;
 scalar_t__ listen (int,int ) ;
 int ntohs (int ) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int run_server(struct sockaddr *sa, socklen_t salen, ptls_context_t *ctx, const char *input_file,
                      ptls_handshake_properties_t *hsprop, int request_key_update)
{
    int listen_fd, conn_fd, on = 1;

    if ((listen_fd = socket(sa->sa_family, SOCK_STREAM, 0)) == -1) {
        perror("socket(2) failed");
        return 1;
    }
    if (setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) != 0) {
        perror("setsockopt(SO_REUSEADDR) failed");
        return 1;
    }
    if (bind(listen_fd, sa, salen) != 0) {
        perror("bind(2) failed");
        return 1;
    }
    if (listen(listen_fd, SOMAXCONN) != 0) {
        perror("listen(2) failed");
        return 1;
    }

    fprintf(stderr, "server started on port %d\n", ntohs(((struct sockaddr_in *) sa)->sin_port));
    while (1) {
        fprintf(stderr, "waiting for connections\n");
        if ((conn_fd = accept(listen_fd, ((void*)0), 0)) != -1)
            handle_connection(conn_fd, ctx, ((void*)0), input_file, hsprop, request_key_update, 0);
    }

    return 0;
}
