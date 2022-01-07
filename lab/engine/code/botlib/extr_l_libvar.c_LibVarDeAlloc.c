
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* string; } ;
typedef TYPE_1__ libvar_t ;


 int FreeMemory (TYPE_1__*) ;

void LibVarDeAlloc(libvar_t *v)
{
 if (v->string) FreeMemory(v->string);
 FreeMemory(v->name);
 FreeMemory(v);
}
