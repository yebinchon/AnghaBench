
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command; } ;


 scalar_t__ Q_stricmp (char const*,int ) ;
 int g_bindCount ;
 TYPE_1__* g_bindings ;

int BindingIDFromName(const char *name) {
 int i;
  for (i=0; i < g_bindCount; i++)
 {
  if (Q_stricmp(name, g_bindings[i].command) == 0) {
   return i;
  }
 }
 return -1;
}
