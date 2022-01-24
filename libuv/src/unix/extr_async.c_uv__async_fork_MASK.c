#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {TYPE_1__ async_io_watcher; } ;
typedef  TYPE_2__ uv_loop_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(uv_loop_t* loop) {
  if (loop->async_io_watcher.fd == -1) /* never started */
    return 0;

  FUNC1(loop);

  return FUNC0(loop);
}