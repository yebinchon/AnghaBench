
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
typedef TYPE_1__ cvar_t ;


 TYPE_1__* Cvar_FindVar (char const*) ;

char *Cvar_VariableString( const char *var_name ) {
 cvar_t *var;

 var = Cvar_FindVar (var_name);
 if (!var)
  return "";
 return var->string;
}
