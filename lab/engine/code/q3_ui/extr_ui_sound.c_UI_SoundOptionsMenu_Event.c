
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


struct TYPE_11__ {int id; } ;
typedef TYPE_5__ menucommon_s ;
struct TYPE_10__ {int curvalue; } ;
struct TYPE_9__ {int curvalue; } ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_7__ {int curvalue; } ;
struct TYPE_12__ {int sfxvolume_original; int musicvolume_original; TYPE_4__ soundSystem; int soundSystem_original; TYPE_3__ quality; int quality_original; TYPE_2__ musicvolume; TYPE_1__ sfxvolume; } ;


 int DEFAULT_SDL_SND_SPEED ;
 int EXEC_APPEND ;






 int QM_ACTIVATED ;
 int UISND_OPENAL ;
 int UI_DisplayOptionsMenu () ;
 int UI_ForceMenuOff () ;
 int UI_GraphicsOptionsMenu () ;
 int UI_NetworkOptionsMenu () ;
 int UI_PopMenu () ;
 TYPE_6__ soundOptionsInfo ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_SoundOptionsMenu_Event( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 130:
  UI_PopMenu();
  UI_GraphicsOptionsMenu();
  break;

 case 131:
  UI_PopMenu();
  UI_DisplayOptionsMenu();
  break;

 case 128:
  break;

 case 129:
  UI_PopMenu();
  UI_NetworkOptionsMenu();
  break;
 case 132:
  UI_PopMenu();
  break;

 case 133:
  trap_Cvar_SetValue( "s_volume", soundOptionsInfo.sfxvolume.curvalue / 10 );
  soundOptionsInfo.sfxvolume_original = soundOptionsInfo.sfxvolume.curvalue;

  trap_Cvar_SetValue( "s_musicvolume", soundOptionsInfo.musicvolume.curvalue / 10 );
  soundOptionsInfo.musicvolume_original = soundOptionsInfo.musicvolume.curvalue;


  if (soundOptionsInfo.quality_original != soundOptionsInfo.quality.curvalue
   || soundOptionsInfo.soundSystem_original != soundOptionsInfo.soundSystem.curvalue)
  {
   int speed;

   switch ( soundOptionsInfo.quality.curvalue )
   {
    default:
    case 0:
     speed = 11025;
     break;
    case 1:
     speed = 22050;
     break;
    case 2:
     speed = 44100;
     break;
   }

   if (speed == DEFAULT_SDL_SND_SPEED)
    speed = 0;

   trap_Cvar_SetValue( "s_sdlSpeed", speed );
   soundOptionsInfo.quality_original = soundOptionsInfo.quality.curvalue;

   trap_Cvar_SetValue( "s_useOpenAL", (soundOptionsInfo.soundSystem.curvalue == UISND_OPENAL) );
   soundOptionsInfo.soundSystem_original = soundOptionsInfo.soundSystem.curvalue;

   UI_ForceMenuOff();
   trap_Cmd_ExecuteText( EXEC_APPEND, "snd_restart\n" );
  }
  break;
 }
}
