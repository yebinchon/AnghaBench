
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int m; int* ptr; } ;


 int assert (int) ;
 int bsr (unsigned int) ;
 int bwrite_append (struct bitwriter*,int ) ;
 int bwrite_nbits (struct bitwriter*,unsigned int,int) ;

void bwrite_gamma_code (struct bitwriter *bw, unsigned int d) {
  assert (d > 0);
  int i, k = bsr (d);
  d ^= 1U << k;
  for (i = 0; i < k; i++) {
    if (!bw->m) {
      bwrite_append (bw, 0);
      bw->m = 0x80;
    }
    *bw->ptr += bw->m;
    bw->m >>= 1;
  }
  if (!bw->m) {
    bwrite_append (bw, 0);
    bw->m = 0x80;
  }
  bw->m >>= 1;
  bwrite_nbits (bw, d, k);
}
