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
struct vas_window {int winid; struct vas_instance* vinst; } ;
struct vas_instance {int /*<<< orphan*/  ida; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_window*) ; 

__attribute__((used)) static void FUNC4(struct vas_window *window)
{
	int winid = window->winid;
	struct vas_instance *vinst = window->vinst;

	FUNC1(window);

	FUNC3(window);

	FUNC0(window);

	FUNC2(&vinst->ida, winid);
}