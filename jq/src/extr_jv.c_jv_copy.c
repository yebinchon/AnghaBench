
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 scalar_t__ JVP_IS_ALLOCATED (TYPE_2__) ;
 int jvp_refcnt_inc (int ) ;

jv jv_copy(jv j) {
  if (JVP_IS_ALLOCATED(j)) {
    jvp_refcnt_inc(j.u.ptr);
  }
  return j;
}
