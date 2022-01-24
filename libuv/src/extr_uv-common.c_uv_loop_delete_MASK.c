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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * default_loop_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(uv_loop_t* loop) {
  uv_loop_t* default_loop;
  int err;

  default_loop = default_loop_ptr;

  err = FUNC2(loop);
  (void) err;    /* Squelch compiler warnings. */
  FUNC0(err == 0);
  if (loop != default_loop)
    FUNC1(loop);
}