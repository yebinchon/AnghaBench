
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* hash_reset ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ _hmac; } ;
typedef TYPE_2__ picohash_ctx_t ;


 int _picohash_hmac_apply_key (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static inline void _picohash_hmac_reset(picohash_ctx_t *ctx)
{
    ctx->_hmac.hash_reset(ctx);
    _picohash_hmac_apply_key(ctx, 0x36);
}
