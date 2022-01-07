
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int stereoFrame_t ;
typedef int qboolean ;
struct TYPE_4__ {int serverTime; } ;
struct TYPE_3__ {int demoplaying; } ;


 int CG_DRAW_ACTIVE_FRAME ;
 int VM_Call (int ,int ,int ,int ,int ,int ) ;
 int VM_Debug (int ) ;
 int cgvm ;
 TYPE_2__ cl ;
 TYPE_1__ clc ;

void CL_CGameRendering( stereoFrame_t stereo, qboolean skipRendering ) {
 VM_Call( cgvm, CG_DRAW_ACTIVE_FRAME, cl.serverTime, stereo, clc.demoplaying, skipRendering );
 VM_Debug( 0 );
}
