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
struct ssif_info {int /*<<< orphan*/  ssif_state; int /*<<< orphan*/ * curr_msg; } ;
struct ipmi_smi_msg {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSIF_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_smi_msg*) ; 
 unsigned long* FUNC1 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssif_info*,unsigned long*) ; 
 scalar_t__ FUNC3 (struct ssif_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssif_info *ssif_info, unsigned long *flags,
			     struct ipmi_smi_msg *msg)
{
	if (FUNC3(ssif_info, msg->data, msg->data_size) != 0) {
		unsigned long oflags;

		flags = FUNC1(ssif_info, &oflags);
		ssif_info->curr_msg = NULL;
		ssif_info->ssif_state = SSIF_NORMAL;
		FUNC2(ssif_info, flags);
		FUNC0(msg);
	}
}