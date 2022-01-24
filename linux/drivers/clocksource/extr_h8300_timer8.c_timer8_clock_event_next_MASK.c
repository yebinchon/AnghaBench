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
struct timer8_priv {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct timer8_priv* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer8_priv*,unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
				   struct clock_event_device *ced)
{
	struct timer8_priv *p = FUNC1(ced);

	FUNC0(!FUNC2(ced));
	FUNC3(p, delta - 1);

	return 0;
}