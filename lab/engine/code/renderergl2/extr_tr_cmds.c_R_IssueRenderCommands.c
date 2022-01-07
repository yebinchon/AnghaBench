
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cmds; scalar_t__ used; } ;
typedef TYPE_1__ renderCommandList_t ;
typedef scalar_t__ qboolean ;
struct TYPE_7__ {TYPE_1__ commands; } ;
struct TYPE_6__ {int integer; } ;


 int RB_ExecuteRenderCommands (scalar_t__) ;
 int RC_END_OF_LIST ;
 int R_PerformanceCounters () ;
 int assert (TYPE_1__*) ;
 TYPE_3__* backEndData ;
 TYPE_2__* r_skipBackEnd ;

void R_IssueRenderCommands( qboolean runPerformanceCounters ) {
 renderCommandList_t *cmdList;

 cmdList = &backEndData->commands;
 assert(cmdList);

 *(int *)(cmdList->cmds + cmdList->used) = RC_END_OF_LIST;


 cmdList->used = 0;

 if ( runPerformanceCounters ) {
  R_PerformanceCounters();
 }


 if ( !r_skipBackEnd->integer ) {

  RB_ExecuteRenderCommands( cmdList->cmds );
 }
}
