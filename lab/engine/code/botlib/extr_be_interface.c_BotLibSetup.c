
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int (* Print ) (int ,char*,char*) ;} ;
struct TYPE_3__ {int botlibsetup; } ;


 int PRT_ERROR ;
 TYPE_2__ botimport ;
 TYPE_1__ botlibglobals ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,char*) ;

qboolean BotLibSetup(char *str)
{
 if (!botlibglobals.botlibsetup)
 {
  botimport.Print(PRT_ERROR, "%s: bot library used before being setup\n", str);
  return qfalse;
 }
 return qtrue;
}
