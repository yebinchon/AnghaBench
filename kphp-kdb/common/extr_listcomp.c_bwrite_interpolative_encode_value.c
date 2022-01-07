
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int m; int* ptr; } ;


 int bwrite_append (struct bitwriter*,int ) ;

void bwrite_interpolative_encode_value (struct bitwriter *bw, int a, int r) {
  int b[32], k = 0, x = r >> 1;
  if (a >= x) {
    a = (a - x) << 1;
  } else {
    a = ((x - a) << 1) - 1;
  }
  a += r;
  while (a > 1) {
    b[k++] = a & 1;
    a >>= 1;
  }
  for (k--; k >= 0; k--) {
    if (!bw->m) {
      bwrite_append (bw, 0);
      bw->m = 0x80;
    }
    if (b[k]) {
      *bw->ptr += bw->m;
    }
    bw->m >>= 1;
  }
}
