
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* now; } ;
typedef TYPE_1__ quicly_context_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ (* cb ) (TYPE_3__*) ;} ;


 scalar_t__ now ;
 scalar_t__ stub1 (TYPE_3__*) ;

__attribute__((used)) static void update_now(quicly_context_t *ctx)
{
    int64_t newval = ctx->now->cb(ctx->now);

    if (now < newval)
        now = newval;
}
