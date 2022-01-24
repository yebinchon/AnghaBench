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
struct proxy_dev {int state; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int STATE_REGISTERED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proxy_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct proxy_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct proxy_dev*) ; 

__attribute__((used)) static void FUNC4(struct proxy_dev *proxy_dev)
{
	FUNC3(proxy_dev);

	/*
	 * A client may hold the 'ops' lock, so let it know that the server
	 * side shuts down before we try to grab the 'ops' lock when
	 * unregistering the chip.
	 */
	FUNC2(proxy_dev);

	if (proxy_dev->state & STATE_REGISTERED_FLAG)
		FUNC0(proxy_dev->chip);

	FUNC1(proxy_dev);
}