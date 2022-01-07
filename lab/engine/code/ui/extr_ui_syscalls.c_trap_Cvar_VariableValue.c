
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;


 int UI_CVAR_VARIABLEVALUE ;
 int syscall (int ,char const*) ;

float trap_Cvar_VariableValue( const char *var_name ) {
 floatint_t fi;
 fi.i = syscall( UI_CVAR_VARIABLEVALUE, var_name );
 return fi.f;
}
