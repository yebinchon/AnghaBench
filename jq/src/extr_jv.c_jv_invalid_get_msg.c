
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int errmsg; } ;
typedef TYPE_2__ jvp_invalid ;
struct TYPE_11__ {scalar_t__ ptr; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_INVALID_MSG ;
 scalar_t__ JVP_HAS_FLAGS (TYPE_3__,int ) ;
 int JVP_HAS_KIND (TYPE_3__,int ) ;
 int JV_KIND_INVALID ;
 int assert (int ) ;
 TYPE_3__ jv_copy (int ) ;
 int jv_free (TYPE_3__) ;
 TYPE_3__ jv_null () ;

jv jv_invalid_get_msg(jv inv) {
  assert(JVP_HAS_KIND(inv, JV_KIND_INVALID));

  jv x;
  if (JVP_HAS_FLAGS(inv, JVP_FLAGS_INVALID_MSG)) {
    x = jv_copy(((jvp_invalid*)inv.u.ptr)->errmsg);
  }
  else {
    x = jv_null();
  }

  jv_free(inv);
  return x;
}
