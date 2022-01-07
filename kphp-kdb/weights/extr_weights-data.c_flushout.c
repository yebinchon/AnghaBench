
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buff ;
 int SWS ;
 int kfs_sws_write (int *,scalar_t__,int) ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;

__attribute__((used)) static void flushout (void) {
  int s;
  if (rptr < wptr) {
    s = wptr - rptr;
    kfs_sws_write (&SWS, rptr, s);
  }
  rptr = wptr = Buff;
}
