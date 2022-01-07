
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int MasterGain; int StopCapture; int Capture; int AvailableCaptureSamples; int StartCapture; int SoundList; int SoundInfo; int ClearSoundBuffer; int RegisterSound; int BeginRegistration; int DisableSounds; int Update; int UpdateEntityPosition; int Respatialize; int StopLoopingSound; int AddRealLoopingSound; int AddLoopingSound; int ClearLoopingSounds; int StopAllSounds; int RawSamples; int StopBackgroundTrack; int StartBackgroundTrack; int StartLocalSound; int StartSound; int Shutdown; } ;
typedef TYPE_1__ soundInterface_t ;
typedef void* qboolean ;
typedef int inputdevicenames ;
typedef int devicenames ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {char* string; } ;
struct TYPE_14__ {int value; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {char* string; } ;


 int ALC_ALL_DEVICES_SPECIFIER ;
 int ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER ;
 int ALC_CAPTURE_DEVICE_SPECIFIER ;
 int ALC_DEFAULT_ALL_DEVICES_SPECIFIER ;
 int ALC_DEFAULT_DEVICE_SPECIFIER ;
 int ALC_DEVICE_SPECIFIER ;
 char* ALDRIVER_DEFAULT ;
 int AL_FORMAT_MONO16 ;
 int AL_INVERSE_DISTANCE_CLAMPED ;
 int CVAR_ARCHIVE ;
 int CVAR_CHEAT ;
 int CVAR_LATCH ;
 int CVAR_NORESTART ;
 int CVAR_PROTECTED ;
 int CVAR_ROM ;
 int Com_Printf (char*,...) ;
 void* Cvar_Get (char*,char*,int) ;
 int MAX_RAW_STREAMS ;
 int QAL_Init (char*) ;
 int QAL_Shutdown () ;
 int Q_strcat (char*,int,char const*) ;
 int Q_stricmp (char*,char*) ;
 int S_AL_AddLoopingSound ;
 int S_AL_AddRealLoopingSound ;
 int S_AL_AvailableCaptureSamples ;
 int S_AL_BeginRegistration ;
 int S_AL_BufferInit () ;
 int S_AL_Capture ;
 int S_AL_ClearLoopingSounds ;
 int S_AL_ClearSoundBuffer ;
 int S_AL_DisableSounds ;
 int S_AL_MasterGain ;
 int S_AL_RawSamples ;
 int S_AL_RegisterSound ;
 int S_AL_Respatialize ;
 int S_AL_Shutdown ;
 int S_AL_SoundInfo ;
 int S_AL_SoundList ;
 int S_AL_SrcInit () ;
 int S_AL_StartBackgroundTrack ;
 int S_AL_StartCapture ;
 int S_AL_StartLocalSound ;
 int S_AL_StartSound ;
 int S_AL_StopAllSounds ;
 int S_AL_StopBackgroundTrack ;
 int S_AL_StopCapture ;
 int S_AL_StopLoopingSound ;
 int S_AL_Update ;
 int S_AL_UpdateEntityPosition ;
 int VOIP_MAX_PACKET_SAMPLES ;
 int * alCaptureDevice ;
 int alContext ;
 int alDevice ;
 void* capture_ext ;
 TYPE_8__* cl_useMumble ;
 void* enumeration_all_ext ;
 void* enumeration_ext ;
 int qalDistanceModel (int ) ;
 int qalDopplerFactor (int ) ;
 int qalSpeedOfSound (int ) ;
 int * qalcCaptureOpenDevice (char const*,int,int ,int) ;
 int qalcCloseDevice (int ) ;
 int qalcCreateContext (int ,int *) ;
 char* qalcGetString (int *,int ) ;
 void* qalcIsExtensionPresent (int *,char*) ;
 int qalcMakeContextCurrent (int ) ;
 int qalcOpenDevice (char const*) ;
 void* qfalse ;
 void* qtrue ;
 void* s_alAvailableDevices ;
 void* s_alAvailableInputDevices ;
 TYPE_7__* s_alCapture ;
 TYPE_6__* s_alDevice ;
 TYPE_5__* s_alDopplerFactor ;
 TYPE_4__* s_alDopplerSpeed ;
 TYPE_3__* s_alDriver ;
 void* s_alGain ;
 void* s_alGraceDistance ;
 TYPE_2__* s_alInputDevice ;
 void* s_alMaxDistance ;
 void* s_alMinDistance ;
 void* s_alPrecache ;
 void* s_alRolloff ;
 void* s_alSources ;
 int strcmp (char const*,char*) ;
 scalar_t__* streamBufIndex ;
 scalar_t__* streamNumBuffers ;
 void** streamPlaying ;
 int* streamSourceHandles ;
 scalar_t__* streamSources ;
 int strlen (char const*) ;

qboolean S_AL_Init( soundInterface_t *si )
{
 return qfalse;

}
