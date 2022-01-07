
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int w128_t ;
struct TYPE_3__ {int * sfmt; } ;
typedef TYPE_1__ sfmt_t ;


 int N ;
 int POS1 ;
 int do_recursion (int *,int *,int *,int *,int *) ;

__attribute__((used)) static inline void gen_rand_all(sfmt_t *ctx) {
    int i;
    w128_t *r1, *r2;

    r1 = &ctx->sfmt[N - 2];
    r2 = &ctx->sfmt[N - 1];
    for (i = 0; i < N - POS1; i++) {
 do_recursion(&ctx->sfmt[i], &ctx->sfmt[i], &ctx->sfmt[i + POS1], r1,
   r2);
 r1 = r2;
 r2 = &ctx->sfmt[i];
    }
    for (; i < N; i++) {
 do_recursion(&ctx->sfmt[i], &ctx->sfmt[i], &ctx->sfmt[i + POS1 - N], r1,
   r2);
 r1 = r2;
 r2 = &ctx->sfmt[i];
    }
}
