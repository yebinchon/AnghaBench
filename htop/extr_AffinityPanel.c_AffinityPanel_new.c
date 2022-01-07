
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int used; int* cpus; } ;
struct TYPE_5__ {int cpuCount; int settings; } ;
typedef TYPE_1__ ProcessList ;
typedef int Panel ;
typedef int Object ;
typedef TYPE_2__ Affinity ;


 int AffinityPanel ;
 int CheckItem ;
 scalar_t__ CheckItem_newByVal (int ,int) ;
 int Class (int ) ;
 int FunctionBar_newEnterEsc (char*,char*) ;
 int Object_setClass (int *,int ) ;
 int Panel_add (int *,int *) ;
 int * Panel_new (int,int,int,int,int,int ,int ) ;
 int Panel_setHeader (int *,char*) ;
 int Settings_cpuId (int ,int) ;
 int xSnprintf (char*,int,char*,int ) ;
 int xStrdup (char*) ;

Panel* AffinityPanel_new(ProcessList* pl, Affinity* affinity) {
   Panel* this = Panel_new(1, 1, 1, 1, 1, Class(CheckItem), FunctionBar_newEnterEsc("Set    ", "Cancel "));
   Object_setClass(this, Class(AffinityPanel));

   Panel_setHeader(this, "Use CPUs:");
   int curCpu = 0;
   for (int i = 0; i < pl->cpuCount; i++) {
      char number[10];
      xSnprintf(number, 9, "%d", Settings_cpuId(pl->settings, i));
      bool mode;
      if (curCpu < affinity->used && affinity->cpus[curCpu] == i) {
         mode = 1;
         curCpu++;
      } else {
         mode = 0;
      }
      Panel_add(this, (Object*) CheckItem_newByVal(xStrdup(number), mode));
   }
   return this;
}
