
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct item_with_rating {scalar_t__ V; int I; } ;
struct TYPE_4__ {TYPE_1__* h; } ;
struct TYPE_3__ {int value; } ;


 int * R ;
 scalar_t__* RR ;
 size_t* RS ;
 int R_cnt ;
 TYPE_2__ hm ;

__attribute__((used)) static void heapify_front (struct item_with_rating *E, int i, int slot) {
  while (1) {
    int j = i << 1;
    if (j > R_cnt) { break; }
    if (j < R_cnt && RR[j] < RR[j+1]) { j++; }
    if (E->V >= RR[j]) { break; }
    R[i] = R[j];
    RR[i] = RR[j];
    hm.h[RS[i] = RS[j]].value = i;
    i = j;
  }
  R[i] = E->I;
  RR[i] = E->V;
  hm.h[RS[i] = slot].value = i;
}
