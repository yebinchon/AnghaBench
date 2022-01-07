
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MasterGain; int StopCapture; int Capture; int AvailableCaptureSamples; int StartCapture; int SoundList; int SoundInfo; int ClearSoundBuffer; int RegisterSound; int BeginRegistration; int DisableSounds; int Update; int UpdateEntityPosition; int Respatialize; int StopLoopingSound; int AddRealLoopingSound; int AddLoopingSound; int ClearLoopingSounds; int StopAllSounds; int RawSamples; int StopBackgroundTrack; int StartBackgroundTrack; int StartLocalSound; int StartSound; int Shutdown; } ;
typedef TYPE_1__ soundInterface_t ;
typedef int qboolean ;


 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean S_ValidSoundInterface( soundInterface_t *si )
{
 if( !si->Shutdown ) return qfalse;
 if( !si->StartSound ) return qfalse;
 if( !si->StartLocalSound ) return qfalse;
 if( !si->StartBackgroundTrack ) return qfalse;
 if( !si->StopBackgroundTrack ) return qfalse;
 if( !si->RawSamples ) return qfalse;
 if( !si->StopAllSounds ) return qfalse;
 if( !si->ClearLoopingSounds ) return qfalse;
 if( !si->AddLoopingSound ) return qfalse;
 if( !si->AddRealLoopingSound ) return qfalse;
 if( !si->StopLoopingSound ) return qfalse;
 if( !si->Respatialize ) return qfalse;
 if( !si->UpdateEntityPosition ) return qfalse;
 if( !si->Update ) return qfalse;
 if( !si->DisableSounds ) return qfalse;
 if( !si->BeginRegistration ) return qfalse;
 if( !si->RegisterSound ) return qfalse;
 if( !si->ClearSoundBuffer ) return qfalse;
 if( !si->SoundInfo ) return qfalse;
 if( !si->SoundList ) return qfalse;
 return qtrue;
}
