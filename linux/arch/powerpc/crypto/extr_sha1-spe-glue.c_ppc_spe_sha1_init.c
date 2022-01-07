
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha1_state {scalar_t__ count; int * state; } ;


 int SHA1_H0 ;
 int SHA1_H1 ;
 int SHA1_H2 ;
 int SHA1_H3 ;
 int SHA1_H4 ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ppc_spe_sha1_init(struct shash_desc *desc)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);

 sctx->state[0] = SHA1_H0;
 sctx->state[1] = SHA1_H1;
 sctx->state[2] = SHA1_H2;
 sctx->state[3] = SHA1_H3;
 sctx->state[4] = SHA1_H4;
 sctx->count = 0;

 return 0;
}
