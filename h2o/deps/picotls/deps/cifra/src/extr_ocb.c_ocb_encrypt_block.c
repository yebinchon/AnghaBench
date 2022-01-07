
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_5__ {int i; int checksum; int const* out; int prpctx; TYPE_1__* prp; int offset; } ;
typedef TYPE_2__ ocb ;
typedef int cf_gf128 ;
struct TYPE_4__ {int (* encrypt ) (int ,int const*,int const*) ;} ;


 int BLOCK ;
 int cf_gf128_add (int ,int ,int ) ;
 int cf_gf128_frombytes_be (int const*,int ) ;
 int cf_gf128_tobytes_be (int ,int const*) ;
 int count_trailing_zeroes (int ) ;
 int ocb_add_Ln (TYPE_2__*,int ,int ) ;
 int stub1 (int ,int const*,int const*) ;
 int xor_bb (int const*,int const*,int const*,int) ;

__attribute__((used)) static void ocb_encrypt_block(void *vctx, const uint8_t *block)
{
  ocb *o = vctx;


  ocb_add_Ln(o, count_trailing_zeroes(o->i), o->offset);


  uint8_t offset_bytes[BLOCK];
  cf_gf128_tobytes_be(o->offset, offset_bytes);

  uint8_t block_tmp[BLOCK];
  xor_bb(block_tmp, block, offset_bytes, sizeof block_tmp);
  o->prp->encrypt(o->prpctx, block_tmp, block_tmp);
  xor_bb(o->out, block_tmp, offset_bytes, sizeof block_tmp);
  o->out += sizeof block_tmp;


  cf_gf128 P;
  cf_gf128_frombytes_be(block, P);
  cf_gf128_add(o->checksum, P, o->checksum);

  o->i++;
}
