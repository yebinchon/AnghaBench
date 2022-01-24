#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* signal_pipefd; int /*<<< orphan*/  signal_io_watcher; } ;
typedef  TYPE_1__ uv_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(uv_loop_t* loop) {
  FUNC1(loop, &loop->signal_io_watcher, POLLIN);
  FUNC0(loop->signal_pipefd[0]);
  FUNC0(loop->signal_pipefd[1]);
  loop->signal_pipefd[0] = -1;
  loop->signal_pipefd[1] = -1;
  return FUNC2(loop);
}