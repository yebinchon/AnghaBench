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
struct clock_event_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct timer8_priv* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timer8_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct timer8_priv*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *ced)
{
	struct timer8_priv *p = FUNC0(ced);

	FUNC1("%s: used for oneshot clock events\n", ced->name);
	FUNC3(p);
	FUNC2(p, 0x10000);

	return 0;
}