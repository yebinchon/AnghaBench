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
struct unl {int /*<<< orphan*/  family; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  NL_AUTO_PID ; 
 int /*<<< orphan*/  NL_AUTO_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC2 () ; 

struct nl_msg *FUNC3(struct unl *unl, int cmd, bool dump)
{
	struct nl_msg *msg;
	int flags = 0;

	msg = FUNC2();
	if (!msg)
		goto out;

	if (dump)
		flags |= NLM_F_DUMP;

	FUNC1(msg, NL_AUTO_PID, NL_AUTO_SEQ,
		    FUNC0(unl->family), 0, flags, cmd, 0);

out:
	return msg;
}