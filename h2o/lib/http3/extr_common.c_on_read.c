
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ h2o_socket_t ;
typedef int h2o_http3_ctx_t ;


 int h2o_http3_read_socket (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    h2o_http3_ctx_t *ctx = sock->data;
    h2o_http3_read_socket(ctx, sock, ((void*)0));
}
