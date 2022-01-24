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
struct xilly_endpoint {int /*<<< orphan*/  ep_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ep_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xilly_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (struct xilly_endpoint*) ; 
 int /*<<< orphan*/  xillybus_wq ; 

void FUNC6(struct xilly_endpoint *endpoint)
{
	FUNC5(endpoint);

	FUNC2(&ep_list_lock);
	FUNC1(&endpoint->ep_list);
	FUNC3(&ep_list_lock);

	FUNC4(endpoint);

	/*
	 * Flushing is done upon endpoint release to prevent access to memory
	 * just about to be released. This makes the quiesce complete.
	 */
	FUNC0(xillybus_wq);
}