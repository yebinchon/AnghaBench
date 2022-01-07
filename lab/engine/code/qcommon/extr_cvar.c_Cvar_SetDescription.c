
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * description; } ;
typedef TYPE_1__ cvar_t ;


 int * CopyString (char const*) ;
 int Z_Free (int *) ;

void Cvar_SetDescription( cvar_t *var, const char *var_description )
{
 if( var_description && var_description[0] != '\0' )
 {
  if( var->description != ((void*)0) )
  {
   Z_Free( var->description );
  }
  var->description = CopyString( var_description );
 }
}
