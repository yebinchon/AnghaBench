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
typedef  int /*<<< orphan*/  OS_ERR_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  E_OS_OK ; 
 int /*<<< orphan*/  WDT_MAX_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (void *param)
{
  /* Init BSP (also init BSP on ARC core) */
  queue = FUNC0 ();
  /* start Quark watchdog */
  FUNC5 (WDT_MAX_TIMEOUT_MS);
  /* Init the CFW */
  FUNC1 (queue);
  FUNC2 ();
  /* Loop to process message queue */
  while (1)
  {
    OS_ERR_TYPE err = E_OS_OK;
    /* Process message with a given timeout */
    FUNC3 (queue, 5000, &err);
    /* Acknowledge the system watchdog to prevent panic and reset */
    FUNC4 ();
  }
}