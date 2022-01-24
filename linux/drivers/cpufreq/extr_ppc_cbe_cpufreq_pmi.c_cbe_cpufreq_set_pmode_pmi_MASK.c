#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int data2; int /*<<< orphan*/  data1; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ pmi_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMI_TYPE_FREQ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long jiffies ; 
 long FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(int cpu, unsigned int pmode)
{
	int ret;
	pmi_message_t pmi_msg;
#ifdef DEBUG
	long time;
#endif
	pmi_msg.type = PMI_TYPE_FREQ_CHANGE;
	pmi_msg.data1 =	FUNC0(cpu);
	pmi_msg.data2 = pmode;

#ifdef DEBUG
	time = jiffies;
#endif
	FUNC2(pmi_msg);

#ifdef DEBUG
	time = jiffies  - time;
	time = jiffies_to_msecs(time);
	pr_debug("had to wait %lu ms for a transition using " \
		 "PMI\n", time);
#endif
	ret = pmi_msg.data2;
	FUNC3("PMI returned slow mode %d\n", ret);

	return ret;
}