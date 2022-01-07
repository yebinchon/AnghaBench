
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * base; } ;
struct TYPE_3__ {TYPE_2__ pubkey; } ;
struct st_x9_62_keyex_context_t {int bn_ctx; TYPE_1__ super; int privkey; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int * EC_KEY_get0_group (int ) ;
 int * EC_KEY_get0_public_key (int ) ;
 int PTLS_ERROR_NO_MEMORY ;
 TYPE_2__ x9_62_encode_point (int const*,int const*,int ) ;

__attribute__((used)) static int x9_62_setup_pubkey(struct st_x9_62_keyex_context_t *ctx)
{
    const EC_GROUP *group = EC_KEY_get0_group(ctx->privkey);
    const EC_POINT *pubkey = EC_KEY_get0_public_key(ctx->privkey);
    if ((ctx->super.pubkey = x9_62_encode_point(group, pubkey, ctx->bn_ctx)).base == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    return 0;
}
