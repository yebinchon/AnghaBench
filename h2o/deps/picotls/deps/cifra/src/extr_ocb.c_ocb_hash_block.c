
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int i; int offset; int sum; int o; } ;
typedef TYPE_1__ ocb_hash ;


 int count_trailing_zeroes (int ) ;
 int ocb_add_Ln (int ,int ,int ) ;
 int ocb_hash_sum (int ,int const*,int ,int ) ;

__attribute__((used)) static void ocb_hash_block(void *vctx, const uint8_t *block)
{
  ocb_hash *h = vctx;


  ocb_add_Ln(h->o, count_trailing_zeroes(h->i), h->offset);


  ocb_hash_sum(h->o, block, h->sum, h->offset);

  h->i++;
}
