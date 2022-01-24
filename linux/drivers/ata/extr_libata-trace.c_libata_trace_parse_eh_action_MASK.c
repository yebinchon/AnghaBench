#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct trace_seq {int dummy; } ;

/* Variables and functions */
 unsigned int ATA_EH_ENABLE_LINK ; 
 unsigned int ATA_EH_HARDRESET ; 
 unsigned int ATA_EH_PARK ; 
 unsigned int ATA_EH_REVALIDATE ; 
 unsigned int ATA_EH_SOFTRESET ; 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 

const char *
FUNC3(struct trace_seq *p, unsigned int eh_action)
{
	const char *ret = FUNC0(p);

	FUNC1(p, "%x", eh_action);
	if (eh_action) {
		FUNC1(p, "{ ");
		if (eh_action & ATA_EH_REVALIDATE)
			FUNC1(p, "REVALIDATE ");
		if (eh_action & (ATA_EH_SOFTRESET | ATA_EH_HARDRESET))
			FUNC1(p, "RESET ");
		else if (eh_action & ATA_EH_SOFTRESET)
			FUNC1(p, "SOFTRESET ");
		else if (eh_action & ATA_EH_HARDRESET)
			FUNC1(p, "HARDRESET ");
		if (eh_action & ATA_EH_ENABLE_LINK)
			FUNC1(p, "ENABLE_LINK ");
		if (eh_action & ATA_EH_PARK)
			FUNC1(p, "PARK ");
		FUNC2(p, '}');
	}
	FUNC2(p, 0);

	return ret;
}