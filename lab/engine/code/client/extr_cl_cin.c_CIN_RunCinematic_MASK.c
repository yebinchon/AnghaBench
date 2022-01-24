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
typedef  scalar_t__ e_status ;
struct TYPE_6__ {int currentHandle; } ;
struct TYPE_5__ {scalar_t__ status; int playonwalls; int lastTime; int startTime; int tfps; int numQuads; scalar_t__ looping; scalar_t__ shader; scalar_t__ alterGameState; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_CINEMATIC ; 
 int FUNC0 () ; 
 scalar_t__ FMV_EOF ; 
 scalar_t__ FMV_IDLE ; 
 scalar_t__ FMV_LOOPED ; 
 scalar_t__ FMV_PLAY ; 
 int MAX_VIDEO_HANDLES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 TYPE_3__ cin ; 
 TYPE_2__* cinTable ; 
 TYPE_1__ clc ; 
 size_t currentHandle ; 

e_status FUNC5 (int handle)
{
	int	start = 0;
	int     thisTime = 0;

	if (handle < 0 || handle>= MAX_VIDEO_HANDLES || cinTable[handle].status == FMV_EOF) return FMV_EOF;

	if (cin.currentHandle != handle) {
		currentHandle = handle;
		cin.currentHandle = currentHandle;
		cinTable[currentHandle].status = FMV_EOF;
		FUNC2();
	}

	if (cinTable[handle].playonwalls < -1)
	{
		return cinTable[handle].status;
	}

	currentHandle = handle;

	if (cinTable[currentHandle].alterGameState) {
		if ( clc.state != CA_CINEMATIC ) {
			return cinTable[currentHandle].status;
		}
	}

	if (cinTable[currentHandle].status == FMV_IDLE) {
		return cinTable[currentHandle].status;
	}

	thisTime = FUNC0();
	if (cinTable[currentHandle].shader && (FUNC4(thisTime - cinTable[currentHandle].lastTime))>100) {
		cinTable[currentHandle].startTime += thisTime - cinTable[currentHandle].lastTime;
	}
	cinTable[currentHandle].tfps = (((FUNC0() - cinTable[currentHandle].startTime)*3)/100);

	start = cinTable[currentHandle].startTime;
	while(  (cinTable[currentHandle].tfps != cinTable[currentHandle].numQuads)
		&& (cinTable[currentHandle].status == FMV_PLAY) ) 
	{
		FUNC1();
		if (start != cinTable[currentHandle].startTime) {
			cinTable[currentHandle].tfps = (((FUNC0() - cinTable[currentHandle].startTime)*3)/100);
			start = cinTable[currentHandle].startTime;
		}
	}

	cinTable[currentHandle].lastTime = thisTime;

	if (cinTable[currentHandle].status == FMV_LOOPED) {
		cinTable[currentHandle].status = FMV_PLAY;
	}

	if (cinTable[currentHandle].status == FMV_EOF) {
	  if (cinTable[currentHandle].looping) {
		FUNC2();
	  } else {
		FUNC3();
		return FMV_EOF;
	  }
	}

	return cinTable[currentHandle].status;
}