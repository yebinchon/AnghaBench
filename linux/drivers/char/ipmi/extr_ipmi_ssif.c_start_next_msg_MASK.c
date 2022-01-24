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
struct ssif_info {struct ipmi_smi_msg* curr_msg; struct ipmi_smi_msg* waiting_msg; } ;
struct ipmi_smi_msg {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssif_info*) ; 
 unsigned long* FUNC1 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssif_info*,struct ipmi_smi_msg*) ; 
 int FUNC4 (struct ssif_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ssif_info *ssif_info, unsigned long *flags)
{
	struct ipmi_smi_msg *msg;
	unsigned long oflags;

 restart:
	if (!FUNC0(ssif_info)) {
		FUNC2(ssif_info, flags);
		return;
	}

	if (!ssif_info->waiting_msg) {
		ssif_info->curr_msg = NULL;
		FUNC2(ssif_info, flags);
	} else {
		int rv;

		ssif_info->curr_msg = ssif_info->waiting_msg;
		ssif_info->waiting_msg = NULL;
		FUNC2(ssif_info, flags);
		rv = FUNC4(ssif_info,
				ssif_info->curr_msg->data,
				ssif_info->curr_msg->data_size);
		if (rv) {
			msg = ssif_info->curr_msg;
			ssif_info->curr_msg = NULL;
			FUNC3(ssif_info, msg);
			flags = FUNC1(ssif_info, &oflags);
			goto restart;
		}
	}
}