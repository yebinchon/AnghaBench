
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int sin ;
typedef int reuse_flag ;
typedef int buf ;
typedef int SSL_CTX ;
typedef int SSL ;


 int AF_INET ;
 scalar_t__ EINTR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 int SSL_accept (int *) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_read (int *,char*,int) ;
 int SSL_set_fd (int *,int) ;
 int SSL_shutdown (int *) ;
 int SSL_write (int *,char const*,int ) ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,void*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int htonl (int) ;
 int htons (int) ;
 scalar_t__ listen (int,int ) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int strlen (char const*) ;

int dumb_https_server(unsigned short port, SSL_CTX *ctx)
{
    int listen_fd, reuse_flag;
    struct sockaddr_in sin = {};

    if ((listen_fd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
        fprintf(stderr, "failed to create socket:%s\n", strerror(errno));
        return 111;
    }
    reuse_flag = 1;
    setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &reuse_flag, sizeof(reuse_flag));
    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = htonl(0x7f000001);
    sin.sin_port = htons(8888);
    if (bind(listen_fd, (void *)&sin, sizeof(sin)) != 0) {
        fprintf(stderr, "bind failed:%s\n", strerror(errno));
        return 111;
    }
    if (listen(listen_fd, SOMAXCONN) != 0) {
        fprintf(stderr, "listen failed:%s\n", strerror(errno));
        return 111;
    }

    while (1) {
        int conn_fd;
        SSL *ssl;
        char buf[4096];

        while ((conn_fd = accept(listen_fd, ((void*)0), ((void*)0))) == -1 && errno == EINTR)
            ;
        if (conn_fd == -1) {
            fprintf(stderr, "accept(2) failed:%s\n", strerror(errno));
            return 111;
        }
        ssl = SSL_new(ctx);
        SSL_set_fd(ssl, conn_fd);
        if (SSL_accept(ssl) == 1) {
            SSL_read(ssl, buf, sizeof(buf));
            const char *resp =
                "HTTP/1.0 200 OK\r\nContent-Length: 6\r\nConnection: close\r\nContent-Type: text/plain\r\n\r\nhello\n";
            SSL_write(ssl, resp, strlen(resp));
            SSL_shutdown(ssl);
        } else {
            fprintf(stderr, "SSL_accept failed\n");
        }
        SSL_free(ssl);
        close(conn_fd);
    }
}
