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
struct TYPE_3__ {int backend_fd; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(uv_loop_t* loop) {
  loop->backend_fd = FUNC1();
  if (loop->backend_fd == -1)
    return FUNC0(errno);

  FUNC2(loop->backend_fd, 1);

  return 0;
}