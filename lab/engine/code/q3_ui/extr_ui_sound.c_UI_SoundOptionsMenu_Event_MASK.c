#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int id; } ;
typedef  TYPE_5__ menucommon_s ;
struct TYPE_10__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_9__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_7__ {int curvalue; } ;
struct TYPE_12__ {int sfxvolume_original; int musicvolume_original; TYPE_4__ soundSystem; int /*<<< orphan*/  soundSystem_original; TYPE_3__ quality; int /*<<< orphan*/  quality_original; TYPE_2__ musicvolume; TYPE_1__ sfxvolume; } ;

/* Variables and functions */
 int DEFAULT_SDL_SND_SPEED ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_APPLY 133 
#define  ID_BACK 132 
#define  ID_DISPLAY 131 
#define  ID_GRAPHICS 130 
#define  ID_NETWORK 129 
#define  ID_SOUND 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  UISND_OPENAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_6__ soundOptionsInfo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_GRAPHICS:
		FUNC4();
		FUNC2();
		break;

	case ID_DISPLAY:
		FUNC4();
		FUNC0();
		break;

	case ID_SOUND:
		break;

	case ID_NETWORK:
		FUNC4();
		FUNC3();
		break;
/*
	case ID_A3D:
		if( soundOptionsInfo.a3d.curvalue ) {
			trap_Cmd_ExecuteText( EXEC_NOW, "s_enable_a3d\n" );
		}
		else {
			trap_Cmd_ExecuteText( EXEC_NOW, "s_disable_a3d\n" );
		}
		soundOptionsInfo.a3d.curvalue = (int)trap_Cvar_VariableValue( "s_usingA3D" );
		break;
*/
	case ID_BACK:
		FUNC4();
		break;

	case ID_APPLY:
		FUNC6( "s_volume", soundOptionsInfo.sfxvolume.curvalue / 10 );
		soundOptionsInfo.sfxvolume_original = soundOptionsInfo.sfxvolume.curvalue;

		FUNC6( "s_musicvolume", soundOptionsInfo.musicvolume.curvalue / 10 );
		soundOptionsInfo.musicvolume_original = soundOptionsInfo.musicvolume.curvalue;

		// Check if something changed that requires the sound system to be restarted.
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

			FUNC6( "s_sdlSpeed", speed );
			soundOptionsInfo.quality_original = soundOptionsInfo.quality.curvalue;

			FUNC6( "s_useOpenAL", (soundOptionsInfo.soundSystem.curvalue == UISND_OPENAL) );
			soundOptionsInfo.soundSystem_original = soundOptionsInfo.soundSystem.curvalue;

			FUNC1();
			FUNC5( EXEC_APPEND, "snd_restart\n" );
		}
		break;
	}
}