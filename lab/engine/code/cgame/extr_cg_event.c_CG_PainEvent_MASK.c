#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int painTime; int painDirection; } ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;
struct TYPE_9__ {TYPE_2__ pe; TYPE_1__ currentState; } ;
typedef  TYPE_3__ centity_t ;
struct TYPE_10__ {int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  CHAN_VOICE ; 
 TYPE_4__ cg ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4( centity_t *cent, int health ) {
	char	*snd;

	// don't do more than two pain sounds a second
	if ( cg.time - cent->pe.painTime < 500 ) {
		return;
	}

	if ( health < 25 ) {
		snd = "*pain25_1.wav";
	} else if ( health < 50 ) {
		snd = "*pain50_1.wav";
	} else if ( health < 75 ) {
		snd = "*pain75_1.wav";
	} else {
		snd = "*pain100_1.wav";
	}
	// play a gurp sound instead of a normal pain sound
	if (FUNC1(cent) == 3) {
		if (FUNC2()&1) {
			FUNC3(NULL, cent->currentState.number, CHAN_VOICE, FUNC0(cent->currentState.number, "sound/player/gurp1.wav"));
		} else {
			FUNC3(NULL, cent->currentState.number, CHAN_VOICE, FUNC0(cent->currentState.number, "sound/player/gurp2.wav"));
		}
	} else {
		FUNC3(NULL, cent->currentState.number, CHAN_VOICE, FUNC0(cent->currentState.number, snd));
	}
	// save pain time for programitic twitch animation
	cent->pe.painTime = cg.time;
	cent->pe.painDirection ^= 1;
}