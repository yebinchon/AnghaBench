
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ ptr; } ;
struct TYPE_17__ {scalar_t__ kind_flags; scalar_t__ size; TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 scalar_t__ JVP_IS_ALLOCATED (TYPE_2__) ;




 int jv_free (TYPE_2__) ;
 int jv_get_kind (TYPE_2__) ;
 int jvp_array_equal (TYPE_2__,TYPE_2__) ;
 int jvp_number_equal (TYPE_2__,TYPE_2__) ;
 int jvp_object_equal (TYPE_2__,TYPE_2__) ;
 int jvp_string_equal (TYPE_2__,TYPE_2__) ;

int jv_equal(jv a, jv b) {
  int r;
  if (jv_get_kind(a) != jv_get_kind(b)) {
    r = 0;
  } else if (JVP_IS_ALLOCATED(a) &&
             JVP_IS_ALLOCATED(b) &&
             a.kind_flags == b.kind_flags &&
             a.size == b.size &&
             a.u.ptr == b.u.ptr) {
    r = 1;
  } else {
    switch (jv_get_kind(a)) {
    case 130:
      r = jvp_number_equal(a, b);
      break;
    case 131:
      r = jvp_array_equal(a, b);
      break;
    case 128:
      r = jvp_string_equal(a, b);
      break;
    case 129:
      r = jvp_object_equal(a, b);
      break;
    default:
      r = 1;
      break;
    }
  }
  jv_free(a);
  jv_free(b);
  return r;
}
