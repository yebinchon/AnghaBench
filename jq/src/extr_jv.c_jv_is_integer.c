
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ DBL_EPSILON ;
 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_NUMBER ;
 scalar_t__ fabs (double) ;
 double jv_number_value (int ) ;
 double modf (double,double*) ;

int jv_is_integer(jv j){
  if(!JVP_HAS_KIND(j, JV_KIND_NUMBER)){
    return 0;
  }

  double x = jv_number_value(j);

  double ipart;
  double fpart = modf(x, &ipart);

  return fabs(fpart) < DBL_EPSILON;
}
