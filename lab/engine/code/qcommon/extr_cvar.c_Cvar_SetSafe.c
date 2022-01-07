
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_NONEXISTENT ;
 int CVAR_PROTECTED ;
 int Com_Error (int ,char*,char const*,...) ;
 int Cvar_Flags (char const*) ;
 int Cvar_Set (char const*,char const*) ;
 int ERR_DROP ;

void Cvar_SetSafe( const char *var_name, const char *value )
{
 int flags = Cvar_Flags( var_name );

 if((flags != CVAR_NONEXISTENT) && (flags & CVAR_PROTECTED))
 {
  if( value )
   Com_Error( ERR_DROP, "Restricted source tried to set "
    "\"%s\" to \"%s\"", var_name, value );
  else
   Com_Error( ERR_DROP, "Restricted source tried to "
    "modify \"%s\"", var_name );
  return;
 }
 Cvar_Set( var_name, value );
}
