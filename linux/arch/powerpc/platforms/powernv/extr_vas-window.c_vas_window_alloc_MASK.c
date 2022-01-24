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
 int ENOMEM ; 
 struct vas_window* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*) ; 
 struct vas_window* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vas_window*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vas_window*) ; 

__attribute__((used)) static struct vas_window *FUNC7(struct vas_instance *vinst)
{
	int winid;
	struct vas_window *window;

	winid = FUNC4(&vinst->ida);
	if (winid < 0)
		return FUNC0(winid);

	window = FUNC2(sizeof(*window), GFP_KERNEL);
	if (!window)
		goto out_free;

	window->vinst = vinst;
	window->winid = winid;

	if (FUNC3(window))
		goto out_free;

	FUNC6(window);

	return window;

out_free:
	FUNC1(window);
	FUNC5(&vinst->ida, winid);
	return FUNC0(-ENOMEM);
}