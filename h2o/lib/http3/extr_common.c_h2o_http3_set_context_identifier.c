
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef int h2o_http3_forward_packets_cb ;
struct TYPE_4__ {int node_id; void* thread_id; } ;
struct TYPE_5__ {int default_ttl; int forward_packets; TYPE_1__ next_cid; void* accept_thread_divisor; } ;
typedef TYPE_2__ h2o_http3_ctx_t ;



void h2o_http3_set_context_identifier(h2o_http3_ctx_t *ctx, uint32_t accept_thread_divisor, uint32_t thread_id, uint64_t node_id,
                                      uint8_t ttl, h2o_http3_forward_packets_cb forward_packets_cb)
{
    ctx->accept_thread_divisor = accept_thread_divisor;
    ctx->next_cid.thread_id = thread_id;
    ctx->next_cid.node_id = node_id;
    ctx->forward_packets = forward_packets_cb;
    ctx->default_ttl = ttl;
}
