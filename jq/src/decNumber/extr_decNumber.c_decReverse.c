
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;



__attribute__((used)) static void decReverse(Unit *ulo, Unit *uhi) {
  Unit temp;
  for (; ulo<uhi; ulo++, uhi--) {
    temp=*ulo;
    *ulo=*uhi;
    *uhi=temp;
    }
  return;
  }
