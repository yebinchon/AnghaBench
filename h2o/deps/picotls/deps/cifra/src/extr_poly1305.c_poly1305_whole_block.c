
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int cf_poly1305 ;


 int poly1305_block (int *,int*) ;

__attribute__((used)) static void poly1305_whole_block(void *vctx,
                                 const uint8_t *buf)
{
  cf_poly1305 *ctx = vctx;
  uint32_t c[17];
  int i;

  for (i = 0; i < 16; i++)
    c[i] = buf[i];

  c[16] = 1;
  poly1305_block(ctx, c);
}
