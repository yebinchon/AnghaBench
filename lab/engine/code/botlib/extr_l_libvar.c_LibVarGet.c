
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ libvar_t ;


 int Q_stricmp (int ,char const*) ;
 TYPE_1__* libvarlist ;

libvar_t *LibVarGet(const char *var_name)
{
 libvar_t *v;

 for (v = libvarlist; v; v = v->next)
 {
  if (!Q_stricmp(v->name, var_name))
  {
   return v;
  }
 }
 return ((void*)0);
}
