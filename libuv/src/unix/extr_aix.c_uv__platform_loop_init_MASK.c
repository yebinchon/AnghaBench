#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fs_fd; int backend_fd; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

int FUNC1(uv_loop_t* loop) {
  loop->fs_fd = -1;

  /* Passing maxfd of -1 should mean the limit is determined
   * by the user's ulimit or the global limit as per the doc */
  loop->backend_fd = FUNC0(-1);

  if (loop->backend_fd == -1)
    return -1;

  return 0;
}