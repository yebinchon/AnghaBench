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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OST_OIER ; 
 int OST_OIER_E0 ; 
 int /*<<< orphan*/  OST_OSSR ; 
 int OST_OSSR_M0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	FUNC1(FUNC0(OST_OIER) & ~OST_OIER_E0, OST_OIER);
	FUNC1(FUNC0(OST_OSSR) & ~OST_OSSR_M0, OST_OSSR);
	return 0;
}