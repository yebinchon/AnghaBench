
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {int timeout_entry; TYPE_4__* ctx; TYPE_3__** sock; int timeout; } ;
typedef TYPE_2__ h2o_tunnel_t ;
struct TYPE_15__ {TYPE_1__* input; TYPE_2__* data; } ;
typedef TYPE_3__ h2o_socket_t ;
struct TYPE_16__ {int loop; } ;
typedef TYPE_4__ h2o_context_t ;
struct TYPE_13__ {scalar_t__ size; } ;


 TYPE_2__* h2o_mem_alloc (int) ;
 int h2o_socket_read_start (TYPE_3__*,int (*) (TYPE_3__*,int *)) ;
 int h2o_timer_init (int *,int ) ;
 int h2o_timer_link (int ,int ,int *) ;
 int on_read (TYPE_3__*,int *) ;
 int on_timeout ;

h2o_tunnel_t *h2o_tunnel_establish(h2o_context_t *ctx, h2o_socket_t *sock1, h2o_socket_t *sock2, uint64_t timeout)
{
    h2o_tunnel_t *tunnel = h2o_mem_alloc(sizeof(*tunnel));
    tunnel->ctx = ctx;
    tunnel->timeout = timeout;
    tunnel->sock[0] = sock1;
    tunnel->sock[1] = sock2;
    sock1->data = tunnel;
    sock2->data = tunnel;
    h2o_timer_init(&tunnel->timeout_entry, on_timeout);
    h2o_timer_link(tunnel->ctx->loop, timeout, &tunnel->timeout_entry);


    if (sock2->input->size)
        on_read(sock2, ((void*)0));
    if (sock1->input->size)
        on_read(sock1, ((void*)0));
    h2o_socket_read_start(sock2, on_read);
    h2o_socket_read_start(sock1, on_read);

    return tunnel;
}
