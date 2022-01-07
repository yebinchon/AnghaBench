
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B ;
 int bbs_next_random_byte (int *) ;
 int * buffer ;
 size_t qright ;
 int qsize ;
 int qtotal ;

void random_work (int bytes) {
  while (qtotal < qsize - 1 && bytes > 0) {
    buffer[qright] = bbs_next_random_byte (&B);
    if (++qright == qsize) {
      qright = 0;
    }
    qtotal++;
    bytes--;
  }
}
