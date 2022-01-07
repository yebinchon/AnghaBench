
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cb; } ;
struct st_util_session_cache_t {TYPE_1__ super; } ;
struct TYPE_5__ {int ticket_lifetime; int max_early_data_size; TYPE_1__* encrypt_ticket; } ;
typedef TYPE_2__ ptls_context_t ;


 int encrypt_ticket_cb ;

__attribute__((used)) static inline void setup_session_cache(ptls_context_t *ctx)
{
    static struct st_util_session_cache_t sc;

    sc.super.cb = encrypt_ticket_cb;

    ctx->ticket_lifetime = 86400;
    ctx->max_early_data_size = 8192;
    ctx->encrypt_ticket = &sc.super;
}
