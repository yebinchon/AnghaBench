
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _final ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ picohash_ctx_t ;


 int stub1 (TYPE_1__*,void*) ;

inline void picohash_final(picohash_ctx_t *ctx, void *digest)
{
    ctx->_final(ctx, digest);
}
