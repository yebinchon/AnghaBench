
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* time; int mapRestart; void* levelShot; void* intermissionStarted; scalar_t__ rewardStack; scalar_t__ rewardTime; scalar_t__ timelimitWarnings; scalar_t__ fraglimitWarnings; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__* string; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {scalar_t__ voteTime; } ;


 int CG_ClearParticles () ;
 int CG_InitLocalEntities () ;
 int CG_InitMarkPolys () ;
 int CG_Printf (char*) ;
 int CG_StartMusic () ;
 TYPE_6__ cg ;
 TYPE_5__ cg_recordSPDemo ;
 TYPE_4__ cg_recordSPDemoName ;
 TYPE_3__ cg_showmiss ;
 TYPE_2__ cg_singlePlayerActive ;
 TYPE_1__ cgs ;
 void* qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_S_ClearLoopingSounds (int ) ;
 int trap_SendConsoleCommand (char*) ;
 char* va (char*,scalar_t__*) ;

__attribute__((used)) static void CG_MapRestart( void ) {
 if ( cg_showmiss.integer ) {
  CG_Printf( "CG_MapRestart\n" );
 }

 CG_InitLocalEntities();
 CG_InitMarkPolys();
 CG_ClearParticles ();


 cg.fraglimitWarnings = 0;

 cg.timelimitWarnings = 0;
 cg.rewardTime = 0;
 cg.rewardStack = 0;
 cg.intermissionStarted = qfalse;
 cg.levelShot = qfalse;

 cgs.voteTime = 0;

 cg.mapRestart = qtrue;

 CG_StartMusic();

 trap_S_ClearLoopingSounds(qtrue);
 trap_Cvar_Set("cg_thirdPerson", "0");
}
