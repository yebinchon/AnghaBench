
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int partial ;
struct TYPE_9__ {int sum; int offset; int o; TYPE_3__* member_0; } ;
typedef TYPE_2__ ocb_hash ;
struct TYPE_10__ {int L_star; TYPE_1__* prp; } ;
typedef TYPE_3__ ocb ;
struct TYPE_8__ {int blocksz; } ;


 int BLOCK ;
 int cf_blockwise_accumulate (int*,size_t*,int ,int const*,size_t,int ,TYPE_2__*) ;
 int cf_gf128_add (int ,int ,int ) ;
 int cf_gf128_tobytes_be (int ,int*) ;
 int mem_clean (TYPE_2__*,int) ;
 int memset (int*,int ,int) ;
 int ocb_hash_block ;
 int ocb_hash_init (TYPE_2__*) ;
 int ocb_hash_sum (int ,int*,int ,int ) ;

__attribute__((used)) static void ocb_process_header(ocb *o, const uint8_t *header, size_t nheader,
                               uint8_t out[BLOCK])
{
  ocb_hash ctx = { o };
  ocb_hash_init(&ctx);

  uint8_t partial[BLOCK];
  size_t npartial = 0;

  cf_blockwise_accumulate(partial, &npartial,
                          o->prp->blocksz,
                          header, nheader,
                          ocb_hash_block,
                          &ctx);

  if (npartial)
  {

    cf_gf128_add(ctx.offset, o->L_star, ctx.offset);


    memset(partial + npartial, 0, sizeof(partial) - npartial);
    partial[npartial] = 0x80;


    ocb_hash_sum(ctx.o, partial, ctx.sum, ctx.offset);
  }

  cf_gf128_tobytes_be(ctx.sum, out);
  mem_clean(&ctx, sizeof ctx);
}
