
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _reset ) (TYPE_1__*) ;} ;
typedef TYPE_1__ picohash_ctx_t ;


 int stub1 (TYPE_1__*) ;

inline void picohash_reset(picohash_ctx_t *ctx)
{
    ctx->_reset(ctx);
}
