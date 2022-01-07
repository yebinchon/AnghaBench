
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B ;
 int bbs_next_random_byte (int *) ;
 int * buffer ;
 size_t qleft ;
 size_t qsize ;
 scalar_t__ qtotal ;

int random_get_bytes (char *s, int size) {
  int r = 0;
  while (qtotal > 0 && r < size) {
    *s++ = buffer[qleft];
    buffer[qleft] = 0;
    if (++qleft == qsize) {
      qleft = 0;
    }
    r++;
    qtotal--;
  }
  int t = 0;
  while (r < size && t < 65536) {
    *s++ = bbs_next_random_byte (&B);
    r++;
    t++;
  }
  return r;
}
