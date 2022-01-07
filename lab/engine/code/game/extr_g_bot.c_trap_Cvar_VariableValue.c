
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 float atof (char*) ;
 int trap_Cvar_VariableStringBuffer (char const*,char*,int) ;

float trap_Cvar_VariableValue( const char *var_name ) {
 char buf[128];

 trap_Cvar_VariableStringBuffer(var_name, buf, sizeof(buf));
 return atof(buf);
}
