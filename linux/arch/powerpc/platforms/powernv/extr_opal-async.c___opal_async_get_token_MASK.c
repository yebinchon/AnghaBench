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
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ ASYNC_TOKEN_ALLOCATED ; 
 scalar_t__ ASYNC_TOKEN_UNALLOCATED ; 
 int EBUSY ; 
 int /*<<< orphan*/  opal_async_comp_lock ; 
 TYPE_1__* opal_async_tokens ; 
 int opal_max_async_tokens ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned long flags;
	int i, token = -EBUSY;

	FUNC0(&opal_async_comp_lock, flags);

	for (i = 0; i < opal_max_async_tokens; i++) {
		if (opal_async_tokens[i].state == ASYNC_TOKEN_UNALLOCATED) {
			opal_async_tokens[i].state = ASYNC_TOKEN_ALLOCATED;
			token = i;
			break;
		}
	}

	FUNC1(&opal_async_comp_lock, flags);
	return token;
}