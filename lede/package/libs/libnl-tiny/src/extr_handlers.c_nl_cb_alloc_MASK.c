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
struct nl_cb {int cb_refcnt; } ;
typedef  enum nl_cb_kind { ____Placeholder_nl_cb_kind } nl_cb_kind ;

/* Variables and functions */
 int NL_CB_KIND_MAX ; 
 int NL_CB_TYPE_MAX ; 
 struct nl_cb* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_cb*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cb*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct nl_cb *FUNC3(enum nl_cb_kind kind)
{
	int i;
	struct nl_cb *cb;

	if (kind < 0 || kind > NL_CB_KIND_MAX)
		return NULL;

	cb = FUNC0(1, sizeof(*cb));
	if (!cb)
		return NULL;

	cb->cb_refcnt = 1;

	for (i = 0; i <= NL_CB_TYPE_MAX; i++)
		FUNC2(cb, i, kind, NULL, NULL);

	FUNC1(cb, kind, NULL, NULL);

	return cb;
}