
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_socket_t ;
struct TYPE_4__ {char* base; size_t len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int fprintf (int ,char*,size_t) ;
 size_t h2o_socket_prepare_for_latency_optimized_write (int *,int *) ;
 int h2o_socket_write (int *,TYPE_1__*,int,int ) ;
 int latopt_cond ;
 TYPE_1__ prepare_write_buf () ;
 scalar_t__ server_flag_received ;
 int server_on_write_complete ;
 int stderr ;

void server_write(h2o_socket_t *sock)
{
    size_t sz = h2o_socket_prepare_for_latency_optimized_write(sock, &latopt_cond);
    h2o_iovec_t buf = prepare_write_buf();

    if (server_flag_received)
        buf.base[0] = '1';
    if (sz < buf.len)
        buf.len = sz;

    fprintf(stderr, "writing %zu bytes\n", buf.len);
    h2o_socket_write(sock, &buf, 1, server_on_write_complete);
}
