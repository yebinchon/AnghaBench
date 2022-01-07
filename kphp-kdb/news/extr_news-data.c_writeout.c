
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFFSIZE ;
 scalar_t__ buff ;
 int flushout () ;
 int memcpy (scalar_t__,void*,int) ;
 scalar_t__ wptr ;

void writeout (void *x, int len) {
  while (len > 0) {
    if (wptr + len <= buff + BUFFSIZE) {
      memcpy (wptr, x, len);
      wptr += len;
      return;
    }
    int a = buff + BUFFSIZE - wptr;
    memcpy (wptr, x, a);
    wptr += a;
    x = (char *)x + a;
    len -= a;
    flushout ();
  }
}
