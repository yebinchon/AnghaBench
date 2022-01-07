
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float value; } ;
typedef TYPE_1__ libvar_t ;


 TYPE_1__* LibVarGet (char const*) ;

float LibVarGetValue(const char *var_name)
{
 libvar_t *v;

 v = LibVarGet(var_name);
 if (v)
 {
  return v->value;
 }
 else
 {
  return 0;
 }
}
