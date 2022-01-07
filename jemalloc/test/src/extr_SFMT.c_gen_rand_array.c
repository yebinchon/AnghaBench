
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* w128_t ;
struct TYPE_3__ {void** sfmt; } ;
typedef TYPE_1__ sfmt_t ;


 int N ;
 int POS1 ;
 int do_recursion (void**,void**,void**,void**,void**) ;

__attribute__((used)) static inline void gen_rand_array(sfmt_t *ctx, w128_t *array, int size) {
    int i, j;
    w128_t *r1, *r2;

    r1 = &ctx->sfmt[N - 2];
    r2 = &ctx->sfmt[N - 1];
    for (i = 0; i < N - POS1; i++) {
 do_recursion(&array[i], &ctx->sfmt[i], &ctx->sfmt[i + POS1], r1, r2);
 r1 = r2;
 r2 = &array[i];
    }
    for (; i < N; i++) {
 do_recursion(&array[i], &ctx->sfmt[i], &array[i + POS1 - N], r1, r2);
 r1 = r2;
 r2 = &array[i];
    }
    for (; i < size - N; i++) {
 do_recursion(&array[i], &array[i - N], &array[i + POS1 - N], r1, r2);
 r1 = r2;
 r2 = &array[i];
    }
    for (j = 0; j < 2 * N - size; j++) {
 ctx->sfmt[j] = array[j + size - N];
    }
    for (; i < size; i++, j++) {
 do_recursion(&array[i], &array[i - N], &array[i + POS1 - N], r1, r2);
 r1 = r2;
 r2 = &array[i];
 ctx->sfmt[j] = array[i];
    }
}
