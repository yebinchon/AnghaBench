
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Sys_LowPhysicalMemory ) () ;} ;


 int RB_ShowImages () ;
 int R_IssuePendingRenderCommands () ;
 TYPE_1__ ri ;
 int stub1 () ;

void RE_EndRegistration( void ) {
 R_IssuePendingRenderCommands();
 if (!ri.Sys_LowPhysicalMemory()) {
  RB_ShowImages();
 }
}
