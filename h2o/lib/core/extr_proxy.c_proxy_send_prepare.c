
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int is_head; } ;
struct TYPE_10__ {int stop; int proceed; } ;
struct rp_generator_t {int is_websocket_handshake; scalar_t__ res_done; scalar_t__ req_done; int send_headers_timeout; int sending; int * last_content_before_send; TYPE_3__ up_req; scalar_t__ had_body_error; TYPE_5__* src_req; TYPE_1__ super; } ;
struct TYPE_13__ {int len; int base; } ;
struct TYPE_11__ {int len; int base; } ;
struct TYPE_14__ {int proxy_stats; TYPE_4__ method; TYPE_2__ upgrade; int pool; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_15__ {int * websocket_timeout; } ;
typedef TYPE_6__ h2o_httpclient_ctx_t ;


 int H2O_STRLIT (char*) ;
 int do_proceed ;
 int do_stop ;
 TYPE_6__* get_client_ctx (TYPE_5__*) ;
 int h2o_doublebuffer_init (int *,int *) ;
 scalar_t__ h2o_lcstris (int ,int ,int ) ;
 struct rp_generator_t* h2o_mem_alloc_shared (int *,int,int ) ;
 int h2o_memis (int ,int ,int ) ;
 int h2o_socket_buffer_prototype ;
 int h2o_timer_init (int *,int ) ;
 int memset (int *,int ,int) ;
 int on_generator_dispose ;
 int on_send_headers_timeout ;

__attribute__((used)) static struct rp_generator_t *proxy_send_prepare(h2o_req_t *req)
{
    struct rp_generator_t *self = h2o_mem_alloc_shared(&req->pool, sizeof(*self), on_generator_dispose);
    h2o_httpclient_ctx_t *client_ctx = get_client_ctx(req);

    self->super.proceed = do_proceed;
    self->super.stop = do_stop;
    self->src_req = req;
    if (client_ctx->websocket_timeout != ((void*)0) && h2o_lcstris(req->upgrade.base, req->upgrade.len, H2O_STRLIT("websocket"))) {
        self->is_websocket_handshake = 1;
    } else {
        self->is_websocket_handshake = 0;
    }
    self->had_body_error = 0;
    self->up_req.is_head = h2o_memis(req->method.base, req->method.len, H2O_STRLIT("HEAD"));
    self->last_content_before_send = ((void*)0);
    h2o_doublebuffer_init(&self->sending, &h2o_socket_buffer_prototype);
    memset(&req->proxy_stats, 0, sizeof(req->proxy_stats));
    h2o_timer_init(&self->send_headers_timeout, on_send_headers_timeout);
    self->req_done = 0;
    self->res_done = 0;

    return self;
}
