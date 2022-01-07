
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int registered; } ;


 int R_IssueRenderCommands (int ) ;
 int qfalse ;
 TYPE_1__ tr ;

void R_IssuePendingRenderCommands( void ) {
 if ( !tr.registered ) {
  return;
 }
 R_IssueRenderCommands( qfalse );
}
