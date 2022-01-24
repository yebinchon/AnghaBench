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
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC2(int fd, int on) {
  if (FUNC1(fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on)))
    return FUNC0(errno);
  return 0;
}