
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {scalar_t__ kind_flags; scalar_t__ offset; scalar_t__ size; TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 scalar_t__ JVP_IS_ALLOCATED (TYPE_2__) ;
 int jv_free (TYPE_2__) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;

int jv_identical(jv a, jv b) {
  int r;
  if (a.kind_flags != b.kind_flags
      || a.offset != b.offset
      || a.size != b.size) {
    r = 0;
  } else {
    if (JVP_IS_ALLOCATED(a) ) {
      r = a.u.ptr == b.u.ptr;
    } else {
      r = memcmp(&a.u.ptr, &b.u.ptr, sizeof(a.u)) == 0;
    }
  }
  jv_free(a);
  jv_free(b);
  return r;
}
