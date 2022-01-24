#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ track; int steprate; } ;
struct TYPE_3__ {scalar_t__ fdc_speed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FDCCMD_RESTORE ; 
 int /*<<< orphan*/  FDCREG_CMD ; 
 int /*<<< orphan*/  FDCSPEED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MotorOn ; 
 int NeedSeek ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 TYPE_2__ SUD ; 
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6( void )
{
	if (SUD.track >= 0) {
		FUNC4( 0 );
		return;
	}

	if (FUNC0(FDCSPEED))
		dma_wd.fdc_speed = 0; 	/* always seek with 8 Mhz */;
	FUNC1(("fd_calibrate\n"));
	FUNC3( fd_calibrate_done );
	/* we can't verify, since the speed may be incorrect */
	FUNC2( FDCREG_CMD, FDCCMD_RESTORE | SUD.steprate );

	NeedSeek = 1;
	MotorOn = 1;
	FUNC5();
	/* wait for IRQ */
}