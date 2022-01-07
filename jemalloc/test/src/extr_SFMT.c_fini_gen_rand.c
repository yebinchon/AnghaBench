
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ initialized; } ;
typedef TYPE_1__ sfmt_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

void fini_gen_rand(sfmt_t *ctx) {
    assert(ctx != ((void*)0));

    ctx->initialized = 0;
    free(ctx);
}
