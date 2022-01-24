#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ qfalse ; 
 void* s_backend ; 
 void* s_doppler ; 
 void* s_musicVolume ; 
 void* s_muteWhenMinimized ; 
 void* s_muteWhenUnfocused ; 
 void* s_muted ; 
 void* s_volume ; 
 int /*<<< orphan*/  si ; 

void FUNC15( void )
{
	cvar_t		*cv;
	qboolean	started = qfalse;

	FUNC2( "------ Initializing Sound ------\n" );

	s_volume = FUNC3( "s_volume", "0.8", CVAR_ARCHIVE );
	s_musicVolume = FUNC3( "s_musicvolume", "0.25", CVAR_ARCHIVE );
	s_muted = FUNC3("s_muted", "0", CVAR_ROM);
	s_doppler = FUNC3( "s_doppler", "1", CVAR_ARCHIVE );
	s_backend = FUNC3( "s_backend", "", CVAR_ROM );
	s_muteWhenMinimized = FUNC3( "s_muteWhenMinimized", "0", CVAR_ARCHIVE );
	s_muteWhenUnfocused = FUNC3( "s_muteWhenUnfocused", "0", CVAR_ARCHIVE );

	cv = FUNC3( "s_initsound", "1", 0 );
	if( !cv->integer ) {
		FUNC2( "Sound disabled.\n" );
	} else {

		FUNC7( );

		FUNC0( "play", S_Play_f );
		FUNC0( "music", S_Music_f );
		FUNC0( "stopmusic", S_StopMusic_f );
		FUNC0( "s_list", S_SoundList );
		FUNC0( "s_stop", S_StopAllSounds );
		FUNC0( "s_info", S_SoundInfo );

		cv = FUNC3( "s_useOpenAL", "1", CVAR_ARCHIVE | CVAR_LATCH );
		if( cv->integer ) {
			//OpenAL
			started = FUNC5( &si );
			FUNC4( "s_backend", "OpenAL" );
		}

		if( !started ) {
			started = FUNC6( &si );
			FUNC4( "s_backend", "base" );
		}

		if( started ) {
			if( !FUNC14( &si ) ) {
				FUNC1( ERR_FATAL, "Sound interface invalid" );
			}

			FUNC10( );
			FUNC2( "Sound initialization successful.\n" );
		} else {
			FUNC2( "Sound initialization failed.\n" );
		}
	}

	FUNC2( "--------------------------------\n");
}