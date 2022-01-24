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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * filename_newidx ; 
 scalar_t__ io_buff ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int* newidx_fd ; 
 int newidx_fds ; 
 scalar_t__ rptr ; 
 scalar_t__ wptr ; 
 int FUNC2 (int,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3 (void) {
  int w, s;
  if (rptr < wptr) {
    int i;
    s = wptr - rptr;
    for (i = 0; i < newidx_fds; i++) {
      if (newidx_fd[i] >= 0) {
        w = FUNC2 (newidx_fd[i], rptr, s);
        if (w != s) {
          FUNC1 ("Write to %s failed (%d of %d) bytes written. %m\n" , filename_newidx[i], w, s);
          FUNC0 (newidx_fd[i]);
          newidx_fd[i] = -1;
        }
      }
    }
  }
  rptr = wptr = io_buff;
}