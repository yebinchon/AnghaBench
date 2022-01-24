#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_9__ {int serial_signals; TYPE_1__ params; } ;
typedef  TYPE_2__ MGSLPC_INFO ;

/* Variables and functions */
 unsigned char BIT2 ; 
 unsigned char BIT6 ; 
 scalar_t__ CHA ; 
 scalar_t__ MGSL_MODE_ASYNC ; 
 scalar_t__ MODE ; 
 scalar_t__ PVR ; 
 int /*<<< orphan*/  PVR_DTR ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,unsigned char) ; 

__attribute__((used)) static void FUNC4(MGSLPC_INFO *info)
{
	unsigned char val;

	val = FUNC1(info, CHA + MODE);
	if (info->params.mode == MGSL_MODE_ASYNC) {
		if (info->serial_signals & SerialSignal_RTS)
			val &= ~BIT6;
		else
			val |= BIT6;
	} else {
		if (info->serial_signals & SerialSignal_RTS)
			val |= BIT2;
		else
			val &= ~BIT2;
	}
	FUNC3(info, CHA + MODE, val);

	if (info->serial_signals & SerialSignal_DTR)
		FUNC0(info, CHA + PVR, PVR_DTR);
	else
		FUNC2(info, CHA + PVR, PVR_DTR);
}