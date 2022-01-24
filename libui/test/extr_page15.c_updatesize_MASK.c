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
typedef  int /*<<< orphan*/  uiWindow ;

/* Variables and functions */
 int /*<<< orphan*/  fullscreen ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  width ; 

__attribute__((used)) static void FUNC4(uiWindow *w)
{
	int xp, yp;

	FUNC2(w, &xp, &yp);
	FUNC1(width, xp);
	FUNC1(height, yp);
	// TODO on OS X this is updated AFTER sending the size change, not before
	FUNC0(fullscreen, FUNC3(w));
}