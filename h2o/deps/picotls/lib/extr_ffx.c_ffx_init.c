
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_ptls_cipher_context_t {int dummy; } ;
struct TYPE_3__ {scalar_t__ do_init; } ;
struct TYPE_4__ {int tweaks; TYPE_1__ super; } ;
typedef TYPE_2__ ptls_ffx_context_t ;


 int assert (int) ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static void ffx_init(struct st_ptls_cipher_context_t *_ctx, const void *iv)
{
    ptls_ffx_context_t *ctx = (ptls_ffx_context_t *)_ctx;
    assert(ctx->super.do_init == ffx_init);
    memcpy(ctx->tweaks, iv, 16);
}
