
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmac_tfm_ctx {int * l3key; int * polykey; int nhkey; } ;
struct vmac_desc_ctx {unsigned int partial_size; scalar_t__ first_block_processed; int partial_words; int * partial; int * polytmp; } ;


 int ADD128 (int ,int ,int ,int ) ;
 int l3hash (int ,int ,int ,int ,unsigned int) ;
 int m62 ;
 int memset (int *,int ,unsigned int) ;
 int nh_16 (int ,int ,unsigned int,int ,int ) ;
 int poly_step (int ,int ,int ,int ,int ,int ) ;
 unsigned int round_up (unsigned int,int) ;

__attribute__((used)) static u64 vhash_final(const struct vmac_tfm_ctx *tctx,
         struct vmac_desc_ctx *dctx)
{
 unsigned int partial = dctx->partial_size;
 u64 ch = dctx->polytmp[0];
 u64 cl = dctx->polytmp[1];


 if (partial) {

  unsigned int n = round_up(partial, 16);
  u64 rh, rl;

  memset(&dctx->partial[partial], 0, n - partial);
  nh_16(dctx->partial_words, tctx->nhkey, n / 8, rh, rl);
  rh &= m62;
  if (dctx->first_block_processed)
   poly_step(ch, cl, tctx->polykey[0], tctx->polykey[1],
      rh, rl);
  else
   ADD128(ch, cl, rh, rl);
 }


 return l3hash(ch, cl, tctx->l3key[0], tctx->l3key[1], partial * 8);
}
