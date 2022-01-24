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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FIOCLEX ; 
 int /*<<< orphan*/  FIONCLEX ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(int fd, int set) {
  int r;

  do
    r = FUNC1(fd, set ? FIOCLEX : FIONCLEX);
  while (r == -1 && errno == EINTR);

  if (r)
    return FUNC0(errno);

  return 0;
}