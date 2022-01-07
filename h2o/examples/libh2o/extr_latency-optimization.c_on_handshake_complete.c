
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_socket_t ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int ERR_print_errors_fp (int ) ;
 int H2O_STRLIT (char*) ;
 int client_on_read_first ;
 int client_on_write_complete ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int h2o_socket_close (int *) ;
 char const* h2o_socket_error_ssl_cert_name_mismatch ;
 int h2o_socket_read_start (int *,int ) ;
 int h2o_socket_write (int *,TYPE_1__*,int,int ) ;
 scalar_t__ mode_server ;
 int server_on_read_first ;
 int stderr ;

__attribute__((used)) static void on_handshake_complete(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0) && err != h2o_socket_error_ssl_cert_name_mismatch) {

        fprintf(stderr, "TLS handshake failure:%s\n", err);
        ERR_print_errors_fp(stderr);
        h2o_socket_close(sock);
        exit(1);
        return;
    }

    if (mode_server) {
        h2o_socket_read_start(sock, server_on_read_first);
    } else {
        h2o_iovec_t buf = {H2O_STRLIT("0")};
        h2o_socket_write(sock, &buf, 1, client_on_write_complete);
        h2o_socket_read_start(sock, client_on_read_first);
    }
}
