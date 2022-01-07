
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ libvar_t ;


 TYPE_1__* LibVar (char const*,char const*) ;

char *LibVarString(const char *var_name, const char *value)
{
 libvar_t *v;

 v = LibVar(var_name, value);
 return v->string;
}
