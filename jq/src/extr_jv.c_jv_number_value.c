
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {double num_double; } ;
typedef TYPE_2__ jvp_literal_number ;
struct TYPE_10__ {double number; } ;
struct TYPE_12__ {scalar_t__ size; TYPE_1__ u; } ;
typedef TYPE_3__ jv ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 scalar_t__ JVP_HAS_FLAGS (TYPE_3__,int ) ;
 int JVP_HAS_KIND (TYPE_3__,int ) ;
 int JV_KIND_NUMBER ;
 scalar_t__ JV_NUMBER_SIZE_CONVERTED ;
 int assert (int ) ;
 TYPE_2__* jvp_literal_number_ptr (TYPE_3__) ;
 double jvp_literal_number_to_double (TYPE_3__) ;

double jv_number_value(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_NUMBER));
    return j.u.number;



}
