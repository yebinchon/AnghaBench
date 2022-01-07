
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _update ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ picohash_ctx_t ;


 int stub1 (TYPE_1__*,void const*,size_t) ;

inline void picohash_update(picohash_ctx_t *ctx, const void *input, size_t len)
{
    ctx->_update(ctx, input, len);
}
