
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha256_state {scalar_t__ count; int * state; } ;


 int SHA224_H0 ;
 int SHA224_H1 ;
 int SHA224_H2 ;
 int SHA224_H3 ;
 int SHA224_H4 ;
 int SHA224_H5 ;
 int SHA224_H6 ;
 int SHA224_H7 ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha224_sparc64_init(struct shash_desc *desc)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 sctx->state[0] = SHA224_H0;
 sctx->state[1] = SHA224_H1;
 sctx->state[2] = SHA224_H2;
 sctx->state[3] = SHA224_H3;
 sctx->state[4] = SHA224_H4;
 sctx->state[5] = SHA224_H5;
 sctx->state[6] = SHA224_H6;
 sctx->state[7] = SHA224_H7;
 sctx->count = 0;

 return 0;
}
