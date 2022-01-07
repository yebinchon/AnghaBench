
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_accu_t ;


 int floor (scalar_t__) ;

vec_accu_t Q_rintAccu( vec_accu_t val ){
 return (vec_accu_t) floor( val + 0.5 );
}
