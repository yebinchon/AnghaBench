
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int (* EndFrameCustomView ) () ;int (* BeginFrameCustomView ) () ;} ;


 scalar_t__ CA_ACTIVE ;
 int CG_DRAW_CUSTOM_VIEW ;
 int VM_Call (int ,int ) ;
 int cgvm ;
 TYPE_2__ clc ;
 TYPE_1__ re ;
 int scr_initialized ;
 int stub1 () ;
 int stub2 () ;
 int uivm ;

void SCR_RenderCustomView() {
 if ( !scr_initialized ) {
  return;
 }

 if ( !uivm || clc.state != CA_ACTIVE) {
  return;
 }
 re.BeginFrameCustomView( );
 VM_Call( cgvm, CG_DRAW_CUSTOM_VIEW );
 re.EndFrameCustomView( );
}
