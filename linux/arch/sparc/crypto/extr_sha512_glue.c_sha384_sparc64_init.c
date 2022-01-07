
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {scalar_t__* count; int * state; } ;


 int SHA384_H0 ;
 int SHA384_H1 ;
 int SHA384_H2 ;
 int SHA384_H3 ;
 int SHA384_H4 ;
 int SHA384_H5 ;
 int SHA384_H6 ;
 int SHA384_H7 ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int sha384_sparc64_init(struct shash_desc *desc)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 sctx->state[0] = SHA384_H0;
 sctx->state[1] = SHA384_H1;
 sctx->state[2] = SHA384_H2;
 sctx->state[3] = SHA384_H3;
 sctx->state[4] = SHA384_H4;
 sctx->state[5] = SHA384_H5;
 sctx->state[6] = SHA384_H6;
 sctx->state[7] = SHA384_H7;
 sctx->count[0] = sctx->count[1] = 0;

 return 0;
}
