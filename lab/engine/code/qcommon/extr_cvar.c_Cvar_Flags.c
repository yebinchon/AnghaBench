
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ modified; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_MODIFIED ;
 int CVAR_NONEXISTENT ;
 TYPE_1__* Cvar_FindVar (char const*) ;

int Cvar_Flags(const char *var_name)
{
 cvar_t *var;

 if(!(var = Cvar_FindVar(var_name)))
  return CVAR_NONEXISTENT;
 else
 {
  if(var->modified)
   return var->flags | CVAR_MODIFIED;
  else
   return var->flags;
 }
}
