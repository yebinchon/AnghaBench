#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ fileHandle_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {char* string; } ;
struct TYPE_4__ {int timeDemoStart; double timeDemoFrames; char** timeDemoDurations; int /*<<< orphan*/  timeDemoMaxDuration; int /*<<< orphan*/  timeDemoMinDuration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,double,int,double,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,char*) ; 
 int MAX_STRING_CHARS ; 
 int MAX_TIMEDEMO_DURATIONS ; 
 int FUNC8 () ; 
 TYPE_3__* cl_timedemo ; 
 TYPE_2__* cl_timedemoLog ; 
 TYPE_1__ clc ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC9 (char*) ; 

void FUNC10( void )
{
	char buffer[ MAX_STRING_CHARS ];

	if( cl_timedemo && cl_timedemo->integer )
	{
		int	time;
		
		time = FUNC8() - clc.timeDemoStart;
		if( time > 0 )
		{
			// Millisecond times are frame durations:
			// minimum/average/maximum/std deviation
			FUNC4( buffer, sizeof( buffer ),
					"%i frames %3.1f seconds %3.1f fps %d.0/%.1f/%d.0/%.1f ms\n",
					clc.timeDemoFrames,
					time/1000.0,
					clc.timeDemoFrames*1000.0 / time,
					clc.timeDemoMinDuration,
					time / (float)clc.timeDemoFrames,
					clc.timeDemoMaxDuration,
					FUNC0( ) );
			FUNC3( "%s", buffer );

			// Write a log of all the frame durations
			if( cl_timedemoLog && FUNC9( cl_timedemoLog->string ) > 0 )
			{
				int i;
				int numFrames;
				fileHandle_t f;

				if( ( clc.timeDemoFrames - 1 ) > MAX_TIMEDEMO_DURATIONS )
					numFrames = MAX_TIMEDEMO_DURATIONS;
				else
					numFrames = clc.timeDemoFrames - 1;

				f = FUNC6( cl_timedemoLog->string );
				if( f )
				{
					FUNC7( f, "# %s", buffer );

					for( i = 0; i < numFrames; i++ )
						FUNC7( f, "%d\n", clc.timeDemoDurations[ i ] );

					FUNC5( f );
					FUNC3( "%s written\n", cl_timedemoLog->string );
				}
				else
				{
					FUNC3( "Couldn't open %s for writing\n",
							cl_timedemoLog->string );
				}
			}
		}
	}

	FUNC1( qtrue );
	FUNC2();
}