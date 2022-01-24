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
typedef  int /*<<< orphan*/  jerry_fatal_code_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

void
FUNC1 (jerry_fatal_code_t code)
{
  FUNC0 (JERRY_LOG_LEVEL_ERROR, "Jerry Fatal Error!\n");
  while (true);
}