
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LN ;
 int* LX ;
 int* LY ;
 int* LZ ;

void lm_heap_insert (int data_size, int user_id, int last_local_id) {
  int i, j;
  if (data_size <= LX[1]) {
    return;
  }
  i = 1;
  while (1) {
    j = i*2;
    if (j > LN) {
      break;
    }
    if (LX[j] > LX[j+1]) {
      j++;
    }
    if (data_size <= LX[j]) {
      break;
    }
    LX[i] = LX[j];
    LY[i] = LY[j];
    LZ[i] = LZ[j];
    i = j;
  }
  LX[i] = data_size;
  LY[i] = user_id;
  LZ[i] = last_local_id;
}
