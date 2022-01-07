
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ signum; scalar_t__ loop; } ;
typedef TYPE_1__ uv_signal_t ;



__attribute__((used)) static int uv__signal_compare(uv_signal_t* w1, uv_signal_t* w2) {


  if (w1->signum < w2->signum) return -1;
  if (w1->signum > w2->signum) return 1;



  if ((uintptr_t) w1->loop < (uintptr_t) w2->loop) return -1;
  if ((uintptr_t) w1->loop > (uintptr_t) w2->loop) return 1;

  if ((uintptr_t) w1 < (uintptr_t) w2) return -1;
  if ((uintptr_t) w1 > (uintptr_t) w2) return 1;

  return 0;
}
