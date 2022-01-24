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
typedef  float* vec4_t ;
struct TYPE_2__ {size_t* awardsEarned; scalar_t__* playedSound; } ;

/* Variables and functions */
 int AWARD_PRESENTATION_TIME ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int /*<<< orphan*/  UI_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ postgameMenuInfo ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ui_medalNames ; 
 int /*<<< orphan*/ * ui_medalSounds ; 

__attribute__((used)) static void FUNC4( int timer ) {
	int		awardNum;
	int		atimer;
	vec4_t	color;

	awardNum = timer / AWARD_PRESENTATION_TIME;
	atimer = timer % AWARD_PRESENTATION_TIME;

	color[0] = color[1] = color[2] = 1.0f;
	color[3] = (float)( AWARD_PRESENTATION_TIME - atimer ) / (float)AWARD_PRESENTATION_TIME;
	FUNC0( 320, 64, ui_medalNames[postgameMenuInfo.awardsEarned[awardNum]], UI_CENTER, color );

	FUNC1( awardNum + 1 );

	if( !postgameMenuInfo.playedSound[awardNum] ) {
		postgameMenuInfo.playedSound[awardNum] = qtrue;
		FUNC3( FUNC2( ui_medalSounds[postgameMenuInfo.awardsEarned[awardNum]], qfalse ), CHAN_ANNOUNCER );
	}
}