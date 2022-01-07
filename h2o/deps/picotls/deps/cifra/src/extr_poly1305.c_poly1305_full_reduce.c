
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mask_u32 (int,int) ;
 int negative_1305 ;
 int poly1305_add (int*,int ) ;

__attribute__((used)) static void poly1305_full_reduce(uint32_t x[17])
{
  uint32_t xsub[17];
  size_t i;

  for (i = 0; i < 17; i++)
    xsub[i] = x[i];

  poly1305_add(xsub, negative_1305);




  uint32_t negative_mask = mask_u32(xsub[16] & 0x80, 0x80);
  uint32_t positive_mask = negative_mask ^ 0xffffffff;

  for (i = 0; i < 17; i++)
    x[i] = (x[i] & negative_mask) | (xsub[i] & positive_mask);
}
