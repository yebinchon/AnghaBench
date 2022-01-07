
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int (* executeText ) (int ,char*) ;int (* setBinding ) (int,int ) ;} ;
struct TYPE_3__ {int bind1; int bind2; int command; } ;


 TYPE_2__* DC ;
 int EXEC_APPEND ;
 int g_bindCount ;
 TYPE_1__* g_bindings ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int ,char*) ;

void Controls_SetConfig(qboolean restart)
{
 int i;


 for (i=0; i < g_bindCount; i++)
 {

  if (g_bindings[i].bind1 != -1)
  {
   DC->setBinding( g_bindings[i].bind1, g_bindings[i].command );

   if (g_bindings[i].bind2 != -1)
    DC->setBinding( g_bindings[i].bind2, g_bindings[i].command );
  }
 }
 DC->executeText(EXEC_APPEND, "in_restart\n");

}
