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
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ eh_owner; } ;

/* Variables and functions */
 unsigned int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

void FUNC4(struct ata_port *ap, unsigned int msecs)
{
	bool owns_eh = ap && ap->host->eh_owner == current;

	if (owns_eh)
		FUNC1(ap);

	if (msecs < 20) {
		unsigned long usecs = msecs * USEC_PER_MSEC;
		FUNC3(usecs, usecs + 50);
	} else {
		FUNC2(msecs);
	}

	if (owns_eh)
		FUNC0(ap);
}