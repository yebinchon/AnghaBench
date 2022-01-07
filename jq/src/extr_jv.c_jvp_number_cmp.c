
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {int number; } ;
typedef TYPE_1__ decNumberSingle ;


 int DEC_CONTEXT () ;
 int JVP_FLAGS_NUMBER_LITERAL ;
 scalar_t__ JVP_HAS_FLAGS (int ,int ) ;
 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_NUMBER ;
 int assert (int ) ;
 int decNumberCompare (int *,int ,int ,int ) ;
 scalar_t__ decNumberIsNegative (int *) ;
 scalar_t__ decNumberIsZero (int *) ;
 double jv_number_value (int ) ;
 int jvp_dec_number_ptr (int ) ;

int jvp_number_cmp(jv a, jv b) {
  assert(JVP_HAS_KIND(a, JV_KIND_NUMBER));
  assert(JVP_HAS_KIND(b, JV_KIND_NUMBER));

  if(JVP_HAS_FLAGS(a, JVP_FLAGS_NUMBER_LITERAL) && JVP_HAS_FLAGS(b, JVP_FLAGS_NUMBER_LITERAL)) {
    decNumberSingle res;
    decNumberCompare(&res.number,
                     jvp_dec_number_ptr(a),
                     jvp_dec_number_ptr(b),
                     DEC_CONTEXT()
                     );
    if (decNumberIsZero(&res.number)) {
      return 0;
    } else if (decNumberIsNegative(&res.number)) {
      return -1;
    } else {
      return 1;
    }
  } else {
    double da = jv_number_value(a), db = jv_number_value(b);
    if (da < db) {
      return -1;
    } else if (da == db) {
      return 0;
    } else {
      return 1;
    }
  }
}
