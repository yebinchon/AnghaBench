
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rBuff ;
 scalar_t__ rptr ;

int readin_setpos (int p) {
  rptr = rBuff + p;
  return p;
}
