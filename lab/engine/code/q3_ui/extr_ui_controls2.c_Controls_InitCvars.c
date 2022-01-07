
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* value; int name; void* defaultvalue; } ;
typedef TYPE_1__ configcvar_t ;


 TYPE_1__* g_configcvars ;
 int trap_Cvar_Reset (int ) ;
 int trap_Cvar_SetValue (int ,void*) ;
 void* trap_Cvar_VariableValue (int ) ;

__attribute__((used)) static void Controls_InitCvars( void )
{
 int i;
 configcvar_t* cvarptr;

 cvarptr = g_configcvars;
 for (i=0; ;i++,cvarptr++)
 {
  if (!cvarptr->name)
   break;


  cvarptr->value = trap_Cvar_VariableValue( cvarptr->name );


  trap_Cvar_Reset( cvarptr->name );
  cvarptr->defaultvalue = trap_Cvar_VariableValue( cvarptr->name );


  trap_Cvar_SetValue( cvarptr->name, cvarptr->value );
 }
}
