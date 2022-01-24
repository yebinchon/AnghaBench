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
typedef  int /*<<< orphan*/  uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/ * default_loop_ptr ; 
 int /*<<< orphan*/  default_loop_struct ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

uv_loop_t* FUNC1(void) {
  if (default_loop_ptr != NULL)
    return default_loop_ptr;

  if (FUNC0(&default_loop_struct))
    return NULL;

  default_loop_ptr = &default_loop_struct;
  return default_loop_ptr;
}