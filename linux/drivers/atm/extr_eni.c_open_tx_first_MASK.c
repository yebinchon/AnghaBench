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
struct TYPE_5__ {scalar_t__ traffic_class; } ;
struct TYPE_4__ {TYPE_2__ txtp; } ;
struct atm_vcc {TYPE_1__ qos; } ;
struct TYPE_6__ {scalar_t__ txing; int /*<<< orphan*/ * tx; } ;

/* Variables and functions */
 scalar_t__ ATM_NONE ; 
 TYPE_3__* FUNC0 (struct atm_vcc*) ; 
 int FUNC1 (struct atm_vcc*,TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC2(struct atm_vcc *vcc)
{
	FUNC0(vcc)->tx = NULL;
	if (vcc->qos.txtp.traffic_class == ATM_NONE) return 0;
	FUNC0(vcc)->txing = 0;
	return FUNC1(vcc,&vcc->qos.txtp,1,1);
}