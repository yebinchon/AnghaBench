
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cvar_Set2 (char const*,int *,int ) ;
 int qtrue ;

void Cvar_ForceReset(const char *var_name)
{
 Cvar_Set2(var_name, ((void*)0), qtrue);
}
