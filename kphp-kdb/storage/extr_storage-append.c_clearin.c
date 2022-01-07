
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFFSIZE ;
 scalar_t__ Buff ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;

void clearin (void) {
  rptr = wptr = Buff + BUFFSIZE;
}
