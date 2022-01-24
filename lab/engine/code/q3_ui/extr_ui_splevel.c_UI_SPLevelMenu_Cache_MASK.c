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
struct TYPE_2__ {void** levelCompletePic; void* levelFocusPic; void* levelSelectedPic; int /*<<< orphan*/ * awardSounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  ART_ARROW ; 
 int /*<<< orphan*/  ART_ARROW_FOCUS ; 
 int /*<<< orphan*/  ART_BACK0 ; 
 int /*<<< orphan*/  ART_BACK1 ; 
 int /*<<< orphan*/  ART_CUSTOM0 ; 
 int /*<<< orphan*/  ART_CUSTOM1 ; 
 int /*<<< orphan*/  ART_FIGHT0 ; 
 int /*<<< orphan*/  ART_FIGHT1 ; 
 int /*<<< orphan*/  ART_LEVELFRAME_FOCUS ; 
 int /*<<< orphan*/  ART_LEVELFRAME_SELECTED ; 
 int /*<<< orphan*/  ART_MAP_COMPLETE1 ; 
 int /*<<< orphan*/  ART_MAP_COMPLETE2 ; 
 int /*<<< orphan*/  ART_MAP_COMPLETE3 ; 
 int /*<<< orphan*/  ART_MAP_COMPLETE4 ; 
 int /*<<< orphan*/  ART_MAP_COMPLETE5 ; 
 int /*<<< orphan*/  ART_MAP_UNKNOWN ; 
 int /*<<< orphan*/  ART_RESET0 ; 
 int /*<<< orphan*/  ART_RESET1 ; 
 TYPE_1__ levelMenuInfo ; 
 int /*<<< orphan*/  qfalse ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ui_medalPicNames ; 
 int /*<<< orphan*/ * ui_medalSounds ; 

void FUNC2( void ) {
	int				n;

	FUNC0( ART_LEVELFRAME_FOCUS );
	FUNC0( ART_LEVELFRAME_SELECTED );
	FUNC0( ART_ARROW );
	FUNC0( ART_ARROW_FOCUS );
	FUNC0( ART_MAP_UNKNOWN );
	FUNC0( ART_MAP_COMPLETE1 );
	FUNC0( ART_MAP_COMPLETE2 );
	FUNC0( ART_MAP_COMPLETE3 );
	FUNC0( ART_MAP_COMPLETE4 );
	FUNC0( ART_MAP_COMPLETE5 );
	FUNC0( ART_BACK0 );
	FUNC0( ART_BACK1 );
	FUNC0( ART_FIGHT0 );
	FUNC0( ART_FIGHT1 );
	FUNC0( ART_RESET0 );
	FUNC0( ART_RESET1 );
	FUNC0( ART_CUSTOM0 );
	FUNC0( ART_CUSTOM1 );

	for( n = 0; n < 6; n++ ) {
		FUNC0( ui_medalPicNames[n] );
		levelMenuInfo.awardSounds[n] = FUNC1( ui_medalSounds[n], qfalse );
	}

	levelMenuInfo.levelSelectedPic = FUNC0( ART_LEVELFRAME_SELECTED );
	levelMenuInfo.levelFocusPic = FUNC0( ART_LEVELFRAME_FOCUS );
	levelMenuInfo.levelCompletePic[0] = FUNC0( ART_MAP_COMPLETE1 );
	levelMenuInfo.levelCompletePic[1] = FUNC0( ART_MAP_COMPLETE2 );
	levelMenuInfo.levelCompletePic[2] = FUNC0( ART_MAP_COMPLETE3 );
	levelMenuInfo.levelCompletePic[3] = FUNC0( ART_MAP_COMPLETE4 );
	levelMenuInfo.levelCompletePic[4] = FUNC0( ART_MAP_COMPLETE5 );
}