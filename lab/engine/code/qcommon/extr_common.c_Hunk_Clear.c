
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tempHighwater; scalar_t__ temp; scalar_t__ permanent; scalar_t__ mark; } ;
struct TYPE_5__ {scalar_t__ tempHighwater; scalar_t__ temp; scalar_t__ permanent; scalar_t__ mark; } ;


 int CIN_CloseAllVideos () ;
 int CL_ShutdownCGame () ;
 int CL_ShutdownUI () ;
 int Com_Printf (char*) ;
 int SV_ShutdownGameProgs () ;
 int VM_Clear () ;
 TYPE_1__ hunk_high ;
 TYPE_2__ hunk_low ;
 TYPE_2__* hunk_permanent ;
 TYPE_1__* hunk_temp ;
 int * hunkblocks ;

void Hunk_Clear( void ) {


 CL_ShutdownCGame();
 CL_ShutdownUI();

 SV_ShutdownGameProgs();

 CIN_CloseAllVideos();

 hunk_low.mark = 0;
 hunk_low.permanent = 0;
 hunk_low.temp = 0;
 hunk_low.tempHighwater = 0;

 hunk_high.mark = 0;
 hunk_high.permanent = 0;
 hunk_high.temp = 0;
 hunk_high.tempHighwater = 0;

 hunk_permanent = &hunk_low;
 hunk_temp = &hunk_high;

 Com_Printf( "Hunk_Clear: reset the hunk ok\n" );
 VM_Clear();



}
