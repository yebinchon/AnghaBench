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
typedef  scalar_t__ jerry_fatal_code_t ;

/* Variables and functions */
 scalar_t__ ERR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2 (jerry_fatal_code_t code) /**< cause of error */
{
  if (code != 0
      && code != ERR_OUT_OF_MEMORY)
  {
    FUNC0 ();
  }

  FUNC1 ((int) code);
}