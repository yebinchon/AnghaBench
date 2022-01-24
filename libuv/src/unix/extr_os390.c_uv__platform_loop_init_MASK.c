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
struct TYPE_3__ {int /*<<< orphan*/ * ep; } ;
typedef  TYPE_1__ uv_loop_t ;
typedef  int /*<<< orphan*/  uv__os390_epoll ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

int FUNC2(uv_loop_t* loop) {
  uv__os390_epoll* ep;

  ep = FUNC1(0);
  loop->ep = ep;
  if (ep == NULL)
    return FUNC0(errno);

  return 0;
}