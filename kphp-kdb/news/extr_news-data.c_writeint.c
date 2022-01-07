
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFFSIZE ;
 scalar_t__ buff ;
 int flushout () ;
 scalar_t__ wptr ;

void writeint (int x) {
  if (wptr + sizeof (int) > buff + BUFFSIZE) {
    flushout ();
  }
  *(int *)wptr = x;
  wptr += sizeof (int);
}
