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
struct em_sti_priv {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_CLOCKEVENT ; 
 struct em_sti_priv* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct em_sti_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *ced)
{
	struct em_sti_priv *p = FUNC0(ced);
	FUNC1(p, USER_CLOCKEVENT);
	return 0;
}