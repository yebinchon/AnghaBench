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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ errno ; 
 int fd_close_success_level ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static void FUNC2 (int *fd) {
  if (*fd >= 0) {
    while (1) {
      if (FUNC0 (*fd) < 0) {
        if (errno == EINTR) {
          continue;
        }
        FUNC1 (2, "close (%d) failed. %m\n", *fd);
        return;
      }
      FUNC1 (fd_close_success_level, "fd = %d: was successfully closed.\n", *fd);
      *fd = -1;
      return;
    }
  }
  FUNC1 (3, "skip closing negative fd = %d\n", *fd);
}