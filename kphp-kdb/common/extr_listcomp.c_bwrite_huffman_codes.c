
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitwriter {int dummy; } ;


 int HUFFMAN_MAX_CODE_LENGTH ;
 int assert (int) ;
 int bwrite_nbits (struct bitwriter*,int,int) ;

void bwrite_huffman_codes (struct bitwriter *bw, int *l, int N) {
  int i;
  for (i = 0; i < N; i++) {
    assert (l[i] >= 0 && l[i] <= HUFFMAN_MAX_CODE_LENGTH);
    bwrite_nbits (bw, l[i], 4);
  }
}
