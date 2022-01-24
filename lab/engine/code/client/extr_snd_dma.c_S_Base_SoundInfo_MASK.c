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
struct TYPE_2__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  speed; int /*<<< orphan*/  submission_chunk; scalar_t__ isfloat; int /*<<< orphan*/  samplebits; int /*<<< orphan*/  samples; scalar_t__ channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__ dma ; 
 int /*<<< orphan*/  s_backgroundLoop ; 
 scalar_t__ s_backgroundStream ; 
 int /*<<< orphan*/  s_soundStarted ; 

void FUNC1(void) {	
	FUNC0("----- Sound Info -----\n" );
	if (!s_soundStarted) {
		FUNC0 ("sound system not started\n");
	} else {
		FUNC0("%5d stereo\n", dma.channels - 1);
		FUNC0("%5d samples\n", dma.samples);
		FUNC0("%5d samplebits (%s)\n", dma.samplebits, dma.isfloat ? "float" : "int");
		FUNC0("%5d submission_chunk\n", dma.submission_chunk);
		FUNC0("%5d speed\n", dma.speed);
		FUNC0("%p dma buffer\n", dma.buffer);
		if ( s_backgroundStream ) {
			FUNC0("Background file: %s\n", s_backgroundLoop );
		} else {
			FUNC0("No background file.\n" );
		}

	}
	FUNC0("----------------------\n" );
}