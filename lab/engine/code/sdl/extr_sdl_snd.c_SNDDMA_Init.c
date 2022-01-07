
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ qboolean ;
typedef int obtained ;
typedef int desired ;
struct TYPE_26__ {scalar_t__ value; } ;
struct TYPE_25__ {int integer; } ;
struct TYPE_24__ {scalar_t__ value; } ;
struct TYPE_23__ {int value; } ;
struct TYPE_22__ {int value; } ;
struct TYPE_21__ {scalar_t__ value; } ;
struct TYPE_20__ {int freq; int samples; int channels; void* format; int callback; } ;
struct TYPE_19__ {int major; scalar_t__ minor; int patch; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int samplebits; int channels; int samples; int submission_chunk; int speed; int buffer; int isfloat; } ;
typedef TYPE_1__ SDL_version ;
typedef TYPE_2__ SDL_AudioSpec ;


 void* AUDIO_S16SYS ;
 void* AUDIO_U8 ;
 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int Com_Printf (char*,...) ;
 void* Cvar_Get (char*,char*,int) ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int SDL_AUDIO_ALLOW_ANY_CHANGE ;
 int SDL_AUDIO_BITSIZE (void*) ;
 int SDL_AUDIO_ISFLOAT (void*) ;
 int SDL_FALSE ;
 int SDL_GetCurrentAudioDriver () ;
 int SDL_GetError () ;
 int SDL_GetVersion (TYPE_1__*) ;
 int SDL_INIT_AUDIO ;
 scalar_t__ SDL_Init (int ) ;
 scalar_t__ SDL_OpenAudioDevice (int *,int ,TYPE_2__*,TYPE_2__*,int ) ;
 int SDL_PauseAudioDevice (scalar_t__,int ) ;
 int SDL_QuitSubSystem (int ) ;
 int SDL_TRUE ;
 int SDL_zero (TYPE_2__) ;
 int SNDDMA_AudioCallback ;
 int SNDDMA_PrintAudiospec (char*,TYPE_2__*) ;
 int VOIP_MAX_PACKET_SAMPLES ;
 int calloc (int,int) ;
 TYPE_11__* cl_useMumble ;
 TYPE_10__ dma ;
 scalar_t__ dmapos ;
 int dmasize ;
 int memset (TYPE_2__*,char,int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_8__* s_sdlBits ;
 TYPE_7__* s_sdlCapture ;
 TYPE_6__* s_sdlChannels ;
 TYPE_5__* s_sdlDevSamps ;
 TYPE_4__* s_sdlMixSamps ;
 TYPE_3__* s_sdlSpeed ;
 scalar_t__ sdlCaptureDevice ;
 float sdlMasterGain ;
 scalar_t__ sdlPlaybackDevice ;
 scalar_t__ snd_inited ;

qboolean SNDDMA_Init(void)
{
 SDL_AudioSpec desired;
 SDL_AudioSpec obtained;
 int tmp;




 if (snd_inited)
  return qtrue;

 if (!s_sdlBits) {
  s_sdlBits = Cvar_Get("s_sdlBits", "16", CVAR_ARCHIVE);
  s_sdlSpeed = Cvar_Get("s_sdlSpeed", "0", CVAR_ARCHIVE);
  s_sdlChannels = Cvar_Get("s_sdlChannels", "2", CVAR_ARCHIVE);
  s_sdlDevSamps = Cvar_Get("s_sdlDevSamps", "0", CVAR_ARCHIVE);
  s_sdlMixSamps = Cvar_Get("s_sdlMixSamps", "0", CVAR_ARCHIVE);
 }

 Com_Printf( "SDL_Init( SDL_INIT_AUDIO )... " );

 if (SDL_Init(SDL_INIT_AUDIO) != 0)
 {
  Com_Printf( "FAILED (%s)\n", SDL_GetError( ) );
  return qfalse;
 }

 Com_Printf( "OK\n" );

 Com_Printf( "SDL audio driver is \"%s\".\n", SDL_GetCurrentAudioDriver( ) );

 memset(&desired, '\0', sizeof (desired));
 memset(&obtained, '\0', sizeof (obtained));

 tmp = ((int) s_sdlBits->value);
 if ((tmp != 16) && (tmp != 8))
  tmp = 16;

 desired.freq = (int) s_sdlSpeed->value;
 if(!desired.freq) desired.freq = 22050;
 desired.format = ((tmp == 16) ? AUDIO_S16SYS : AUDIO_U8);



 if (s_sdlDevSamps->value)
  desired.samples = s_sdlDevSamps->value;
 else
 {

  if (desired.freq <= 11025)
   desired.samples = 256;
  else if (desired.freq <= 22050)
   desired.samples = 512;
  else if (desired.freq <= 44100)
   desired.samples = 1024;
  else
   desired.samples = 2048;
 }

 desired.channels = (int) s_sdlChannels->value;
 desired.callback = SNDDMA_AudioCallback;

 sdlPlaybackDevice = SDL_OpenAudioDevice(((void*)0), SDL_FALSE, &desired, &obtained, SDL_AUDIO_ALLOW_ANY_CHANGE);
 if (sdlPlaybackDevice == 0)
 {
  Com_Printf("SDL_OpenAudioDevice() failed: %s\n", SDL_GetError());
  SDL_QuitSubSystem(SDL_INIT_AUDIO);
  return qfalse;
 }

 SNDDMA_PrintAudiospec("SDL_AudioSpec", &obtained);
 tmp = s_sdlMixSamps->value;
 if (!tmp)
  tmp = (obtained.samples * obtained.channels) * 10;

 if (tmp & (tmp - 1))
 {
  int val = 1;
  while (val < tmp)
   val <<= 1;

  tmp = val;
 }

 dmapos = 0;
 dma.samplebits = SDL_AUDIO_BITSIZE(obtained.format);
 dma.isfloat = SDL_AUDIO_ISFLOAT(obtained.format);
 dma.channels = obtained.channels;
 dma.samples = tmp;
 dma.submission_chunk = 1;
 dma.speed = obtained.freq;
 dmasize = (dma.samples * (dma.samplebits/8));
 dma.buffer = calloc(1, dmasize);
 Com_Printf("Starting SDL audio callback...\n");
 SDL_PauseAudioDevice(sdlPlaybackDevice, 0);


 Com_Printf("SDL audio initialized.\n");
 snd_inited = qtrue;
 return qtrue;
}
