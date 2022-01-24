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
typedef  int /*<<< orphan*/  T_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_MODULE_MAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5 (void)
{
  T_QUEUE queue = FUNC0 ();

  FUNC2 (LOG_MODULE_MAIN, "BSP init done");

  FUNC1 (queue);
  FUNC2 (LOG_MODULE_MAIN, "CFW init done");

  FUNC3 (&loop, queue);

  FUNC4 (&loop);
}