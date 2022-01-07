
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ number; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ jv ;
typedef int decNumber ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 scalar_t__ JVP_HAS_FLAGS (TYPE_2__,int ) ;
 int JVP_HAS_KIND (TYPE_2__,int ) ;
 int JV_KIND_NUMBER ;
 int assert (int ) ;
 int decNumberIsNaN (int *) ;
 int * jvp_dec_number_ptr (TYPE_2__) ;

int jvp_number_is_nan(jv n) {
  assert(JVP_HAS_KIND(n, JV_KIND_NUMBER));

  if (JVP_HAS_FLAGS(n, JVP_FLAGS_NUMBER_LITERAL)) {
    decNumber *pdec = jvp_dec_number_ptr(n);
    return decNumberIsNaN(pdec);
  } else {
    return n.u.number != n.u.number;
  }
}
