
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_decimal; } ;
typedef TYPE_2__ jvp_literal_number ;
struct TYPE_6__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_3__ jv ;
typedef int decNumber ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 int JVP_HAS_FLAGS (TYPE_3__,int ) ;
 int assert (int ) ;

__attribute__((used)) static decNumber* jvp_dec_number_ptr(jv j) {
  assert(JVP_HAS_FLAGS(j, JVP_FLAGS_NUMBER_LITERAL));
  return &(((jvp_literal_number*)j.u.ptr)->num_decimal);
}
