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

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(int *fds) {
  if (FUNC2(fds) == -1)
    return -1;
  if (FUNC1(fds[0], F_SETFD, FD_CLOEXEC) == -1 ||
      FUNC1(fds[1], F_SETFD, FD_CLOEXEC) == -1) {
    FUNC0(fds[0]);
    FUNC0(fds[1]);
    return -1;
  }
  return 0;
}