
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int m; int* ptr; } ;


 int assert (int) ;
 int bwrite_append (struct bitwriter*,int ) ;

void bwrite_nbitsull (struct bitwriter *bw, unsigned long long d, int n) {
  assert (!(n & -64));
  if (!n) { return; }
  unsigned long long i;
  for (i = 1ULL << (n-1); i != 0; i >>= 1) {
    if (!bw->m) {
      bwrite_append (bw, 0);
      bw->m = 0x80;
    }
    if (d & i) {
      *bw->ptr += bw->m;
    }
    bw->m >>= 1;
  }
}
