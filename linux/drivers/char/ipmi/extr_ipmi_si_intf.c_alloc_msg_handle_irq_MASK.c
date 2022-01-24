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
struct smi_info {int /*<<< orphan*/  si_state; } ;
struct ipmi_smi_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct smi_info*) ; 
 scalar_t__ FUNC1 (struct smi_info*) ; 
 struct ipmi_smi_msg* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ipmi_smi_msg*) ; 

__attribute__((used)) static struct ipmi_smi_msg *FUNC4(struct smi_info *smi_info)
{
	struct ipmi_smi_msg *msg;

	msg = FUNC2();
	if (!msg) {
		if (!FUNC0(smi_info))
			smi_info->si_state = SI_NORMAL;
	} else if (FUNC1(smi_info)) {
		FUNC3(msg);
		msg = NULL;
	}
	return msg;
}