
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; TYPE_1__* target; } ;
typedef TYPE_3__ mc_point_t ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {int port; TYPE_2__ target; } ;



__attribute__((used)) static int cmp_points (mc_point_t *A, mc_point_t *B) {
  if (A->x < B->x) {
    return -1;
  } else if (A->x > B->x) {
    return 1;
  } else if (A->target->target.s_addr < B->target->target.s_addr) {
    return -1;
  } else if (A->target->target.s_addr > B->target->target.s_addr) {
    return 1;
  } else {
    return A->target->port - B->target->port;
  }
}
