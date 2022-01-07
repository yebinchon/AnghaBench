
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__* input; } ;
typedef TYPE_1__ h2o_socket_t ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_13__ {int bytes_received; int bytes_before_sig; int resp_start_at; } ;
struct TYPE_12__ {int size; } ;


 int H2O_STRLIT (char*) ;
 int client_on_read_second ;
 int client_on_write_complete ;
 TYPE_8__ client_stats ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int h2o_buffer_consume (TYPE_7__**,int ) ;
 int h2o_now (int ) ;
 int h2o_socket_get_loop (TYPE_1__*) ;
 int h2o_socket_read_start (TYPE_1__*,int ) ;
 int h2o_socket_write (TYPE_1__*,TYPE_2__*,int,int ) ;
 int stderr ;

__attribute__((used)) static void client_on_read_first(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {
        fprintf(stderr, "connection closed unexpectedly:%s\n", err);
        exit(1);
        return;
    }

    client_stats.resp_start_at = h2o_now(h2o_socket_get_loop(sock));
    client_stats.bytes_before_sig = sock->input->size;
    client_stats.bytes_received = sock->input->size;
    h2o_buffer_consume(&sock->input, sock->input->size);

    h2o_iovec_t data = {H2O_STRLIT("!")};
    h2o_socket_write(sock, &data, 1, client_on_write_complete);
    h2o_socket_read_start(sock, client_on_read_second);
}
