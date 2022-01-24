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
struct nl_sock {int dummy; } ;
struct nl_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL_CB_DEFAULT ; 
 struct nl_sock* FUNC0 (struct nl_cb*) ; 
 struct nl_cb* FUNC1 (int /*<<< orphan*/ ) ; 

struct nl_sock *FUNC2(void)
{
	struct nl_cb *cb;
	
	cb = FUNC1(NL_CB_DEFAULT);
	if (!cb)
		return NULL;

	return FUNC0(cb);
}