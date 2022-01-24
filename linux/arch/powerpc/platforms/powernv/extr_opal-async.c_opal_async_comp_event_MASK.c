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
typedef  size_t uint64_t ;
struct opal_msg {int /*<<< orphan*/ * params; } ;
struct notifier_block {int dummy; } ;
typedef  enum opal_async_token_state { ____Placeholder_opal_async_token_state } opal_async_token_state ;
struct TYPE_2__ {int state; int /*<<< orphan*/  response; } ;

/* Variables and functions */
 int ASYNC_TOKEN_ABANDONED ; 
 int ASYNC_TOKEN_COMPLETED ; 
 unsigned long OPAL_MSG_ASYNC_COMP ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct opal_msg*,int) ; 
 int /*<<< orphan*/  opal_async_comp_lock ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 TYPE_1__* opal_async_tokens ; 
 int /*<<< orphan*/  opal_async_wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *nb,
		unsigned long msg_type, void *msg)
{
	struct opal_msg *comp_msg = msg;
	enum opal_async_token_state state;
	unsigned long flags;
	uint64_t token;

	if (msg_type != OPAL_MSG_ASYNC_COMP)
		return 0;

	token = FUNC0(comp_msg->params[0]);
	FUNC3(&opal_async_comp_lock, flags);
	state = opal_async_tokens[token].state;
	opal_async_tokens[token].state = ASYNC_TOKEN_COMPLETED;
	FUNC4(&opal_async_comp_lock, flags);

	if (state == ASYNC_TOKEN_ABANDONED) {
		/* Free the token, no one else will */
		FUNC2(token);
		return 0;
	}
	FUNC1(&opal_async_tokens[token].response, comp_msg, sizeof(*comp_msg));
	FUNC5(&opal_async_wait);

	return 0;
}