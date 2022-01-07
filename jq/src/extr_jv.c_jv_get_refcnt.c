
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ptr; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ jv ;
struct TYPE_6__ {int count; } ;


 scalar_t__ JVP_IS_ALLOCATED (TYPE_3__) ;

int jv_get_refcnt(jv j) {
  if (JVP_IS_ALLOCATED(j)) {
    return j.u.ptr->count;
  } else {
    return 1;
  }
}
