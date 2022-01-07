
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int Cmd_AddCommand (char*,int (*) ()) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 void* Cvar_Get (char*,char*,int) ;
 int Cvar_Set (char*,char*) ;
 int ERR_FATAL ;
 scalar_t__ S_AL_Init (int *) ;
 scalar_t__ S_Base_Init (int *) ;
 int S_CodecInit () ;
 int S_Music_f () ;
 int S_Play_f () ;
 int S_SoundInfo () ;
 int S_SoundList () ;
 int S_StopAllSounds () ;
 int S_StopMusic_f () ;
 int S_ValidSoundInterface (int *) ;
 scalar_t__ qfalse ;
 void* s_backend ;
 void* s_doppler ;
 void* s_musicVolume ;
 void* s_muteWhenMinimized ;
 void* s_muteWhenUnfocused ;
 void* s_muted ;
 void* s_volume ;
 int si ;

void S_Init( void )
{
 cvar_t *cv;
 qboolean started = qfalse;

 Com_Printf( "------ Initializing Sound ------\n" );

 s_volume = Cvar_Get( "s_volume", "0.8", CVAR_ARCHIVE );
 s_musicVolume = Cvar_Get( "s_musicvolume", "0.25", CVAR_ARCHIVE );
 s_muted = Cvar_Get("s_muted", "0", CVAR_ROM);
 s_doppler = Cvar_Get( "s_doppler", "1", CVAR_ARCHIVE );
 s_backend = Cvar_Get( "s_backend", "", CVAR_ROM );
 s_muteWhenMinimized = Cvar_Get( "s_muteWhenMinimized", "0", CVAR_ARCHIVE );
 s_muteWhenUnfocused = Cvar_Get( "s_muteWhenUnfocused", "0", CVAR_ARCHIVE );

 cv = Cvar_Get( "s_initsound", "1", 0 );
 if( !cv->integer ) {
  Com_Printf( "Sound disabled.\n" );
 } else {

  S_CodecInit( );

  Cmd_AddCommand( "play", S_Play_f );
  Cmd_AddCommand( "music", S_Music_f );
  Cmd_AddCommand( "stopmusic", S_StopMusic_f );
  Cmd_AddCommand( "s_list", S_SoundList );
  Cmd_AddCommand( "s_stop", S_StopAllSounds );
  Cmd_AddCommand( "s_info", S_SoundInfo );

  cv = Cvar_Get( "s_useOpenAL", "1", CVAR_ARCHIVE | CVAR_LATCH );
  if( cv->integer ) {

   started = S_AL_Init( &si );
   Cvar_Set( "s_backend", "OpenAL" );
  }

  if( !started ) {
   started = S_Base_Init( &si );
   Cvar_Set( "s_backend", "base" );
  }

  if( started ) {
   if( !S_ValidSoundInterface( &si ) ) {
    Com_Error( ERR_FATAL, "Sound interface invalid" );
   }

   S_SoundInfo( );
   Com_Printf( "Sound initialization successful.\n" );
  } else {
   Com_Printf( "Sound initialization failed.\n" );
  }
 }

 Com_Printf( "--------------------------------\n");
}
