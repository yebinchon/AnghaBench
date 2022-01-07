
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LN ;
 int* LX ;
 int* LY ;
 int* LZ ;
 int printf (char*,int,int,int) ;

void output_large_metafiles (void) {
  int i;
  for (i = 1; i <= LN; i++) {
    if (LX[i]) {
      printf ("%d\t%d\t%d\n", LX[i], LY[i], LZ[i]);
    }
  }
}
