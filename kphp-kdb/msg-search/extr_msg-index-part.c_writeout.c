
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 int* Buff ;
 int flushout () ;
 int memcpy (int,char const*,int) ;
 int* wptr ;

void writeout (const void *D, size_t len) {
  const char *d = D;
  while (len > 0) {
    int r = Buff[2] + BUFFSIZE - wptr[2];
    if (r > len) r = len;
    memcpy (wptr[2], d, r);
    d += r;
    wptr[2] += r;
    len -= r;
    if (len > 0) flushout();
  }
}
