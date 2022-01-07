
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MasterGain; int StopCapture; int Capture; int AvailableCaptureSamples; int StartCapture; int SoundList; int SoundInfo; int ClearSoundBuffer; int RegisterSound; int BeginRegistration; int DisableSounds; int Update; int UpdateEntityPosition; int Respatialize; int StopLoopingSound; int AddRealLoopingSound; int AddLoopingSound; int ClearLoopingSounds; int (* StopAllSounds ) () ;int RawSamples; int StopBackgroundTrack; int StartBackgroundTrack; int StartLocalSound; int StartSound; int Shutdown; } ;
typedef TYPE_1__ soundInterface_t ;
typedef int sfx_t ;
typedef scalar_t__ qboolean ;


 int CVAR_ARCHIVE ;
 int CVAR_CHEAT ;
 int Com_Memset (int ,int ,int) ;
 void* Cvar_Get (char*,char*,int ) ;
 int LOOP_HASH ;
 scalar_t__ SNDDMA_Init () ;
 int S_Base_AddLoopingSound ;
 int S_Base_AddRealLoopingSound ;
 int S_Base_AvailableCaptureSamples ;
 int S_Base_BeginRegistration ;
 int S_Base_Capture ;
 int S_Base_ClearLoopingSounds ;
 int S_Base_ClearSoundBuffer ;
 int S_Base_DisableSounds ;
 int S_Base_MasterGain ;
 int S_Base_RawSamples ;
 int S_Base_RegisterSound ;
 int S_Base_Respatialize ;
 int S_Base_Shutdown ;
 int S_Base_SoundInfo ;
 int S_Base_SoundList ;
 int S_Base_StartBackgroundTrack ;
 int S_Base_StartCapture ;
 int S_Base_StartLocalSound ;
 int S_Base_StartSound ;
 int S_Base_StopAllSounds () ;
 int S_Base_StopBackgroundTrack ;
 int S_Base_StopCapture ;
 int S_Base_StopLoopingSound ;
 int S_Base_Update ;
 int S_Base_UpdateEntityPosition ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 void* s_mixPreStep ;
 void* s_mixahead ;
 scalar_t__ s_paintedtime ;
 void* s_show ;
 int s_soundMuted ;
 int s_soundStarted ;
 scalar_t__ s_soundtime ;
 void* s_testsound ;
 int sfxHash ;

qboolean S_Base_Init( soundInterface_t *si ) {
 qboolean r;

 if( !si ) {
  return qfalse;
 }

 s_mixahead = Cvar_Get ("s_mixahead", "0.2", CVAR_ARCHIVE);
 s_mixPreStep = Cvar_Get ("s_mixPreStep", "0.05", CVAR_ARCHIVE);
 s_show = Cvar_Get ("s_show", "0", CVAR_CHEAT);
 s_testsound = Cvar_Get ("s_testsound", "0", CVAR_CHEAT);

 r = SNDDMA_Init();

 if ( r ) {
  s_soundStarted = 1;
  s_soundMuted = 1;


  Com_Memset(sfxHash, 0, sizeof(sfx_t *)*LOOP_HASH);

  s_soundtime = 0;
  s_paintedtime = 0;

  S_Base_StopAllSounds( );
 } else {
  return qfalse;
 }

 si->Shutdown = S_Base_Shutdown;
 si->StartSound = S_Base_StartSound;
 si->StartLocalSound = S_Base_StartLocalSound;
 si->StartBackgroundTrack = S_Base_StartBackgroundTrack;
 si->StopBackgroundTrack = S_Base_StopBackgroundTrack;
 si->RawSamples = S_Base_RawSamples;
 si->StopAllSounds = S_Base_StopAllSounds;
 si->ClearLoopingSounds = S_Base_ClearLoopingSounds;
 si->AddLoopingSound = S_Base_AddLoopingSound;
 si->AddRealLoopingSound = S_Base_AddRealLoopingSound;
 si->StopLoopingSound = S_Base_StopLoopingSound;
 si->Respatialize = S_Base_Respatialize;
 si->UpdateEntityPosition = S_Base_UpdateEntityPosition;
 si->Update = S_Base_Update;
 si->DisableSounds = S_Base_DisableSounds;
 si->BeginRegistration = S_Base_BeginRegistration;
 si->RegisterSound = S_Base_RegisterSound;
 si->ClearSoundBuffer = S_Base_ClearSoundBuffer;
 si->SoundInfo = S_Base_SoundInfo;
 si->SoundList = S_Base_SoundList;
 return qtrue;
}
