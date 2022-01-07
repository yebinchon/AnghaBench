
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ libvar_t ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 scalar_t__ GetMemory (int) ;
 TYPE_1__* libvarlist ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

libvar_t *LibVarAlloc(const char *var_name)
{
 libvar_t *v;

 v = (libvar_t *) GetMemory(sizeof(libvar_t));
 Com_Memset(v, 0, sizeof(libvar_t));
 v->name = (char *) GetMemory(strlen(var_name)+1);
 strcpy(v->name, var_name);

 v->next = libvarlist;
 libvarlist = v;
 return v;
}
