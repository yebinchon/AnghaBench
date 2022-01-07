
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;


 scalar_t__ floor (scalar_t__) ;

vec_t Q_rint (vec_t in)
{
 return floor(in + 0.5);
}
