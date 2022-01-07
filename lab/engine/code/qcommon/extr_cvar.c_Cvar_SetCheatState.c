
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int resetString; int name; int string; int * latchedString; struct TYPE_3__* next; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_CHEAT ;
 int Cvar_Set (int ,int ) ;
 int Z_Free (int *) ;
 TYPE_1__* cvar_vars ;
 scalar_t__ strcmp (int ,int ) ;

void Cvar_SetCheatState(void)
{
 cvar_t *var;


 for(var = cvar_vars; var ; var = var->next)
 {
  if(var->flags & CVAR_CHEAT)
  {


   if (var->latchedString)
   {
    Z_Free(var->latchedString);
    var->latchedString = ((void*)0);
   }
   if (strcmp(var->resetString,var->string))
    Cvar_Set(var->name, var->resetString);
  }
 }
}
