
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int prpctx; TYPE_1__* prp; } ;
typedef TYPE_2__ ocb ;
typedef int cf_gf128 ;
struct TYPE_4__ {int (* encrypt ) (int ,int *,int *) ;} ;


 int BLOCK ;
 int cf_gf128_add (int ,int ,int ) ;
 int cf_gf128_frombytes_be (int *,int ) ;
 int cf_gf128_tobytes_be (int const,int *) ;
 int stub1 (int ,int *,int *) ;
 int xor_bb (int *,int const*,int *,int) ;

__attribute__((used)) static void ocb_hash_sum(ocb *o, const uint8_t *block,
                         cf_gf128 sum, const cf_gf128 offset)
{
  uint8_t offset_bytes[BLOCK];
  cf_gf128_tobytes_be(offset, offset_bytes);

  uint8_t block_tmp[BLOCK];
  xor_bb(block_tmp, block, offset_bytes, sizeof block_tmp);
  o->prp->encrypt(o->prpctx, block_tmp, block_tmp);

  cf_gf128 tmp;
  cf_gf128_frombytes_be(block_tmp, tmp);
  cf_gf128_add(sum, tmp, sum);
}
