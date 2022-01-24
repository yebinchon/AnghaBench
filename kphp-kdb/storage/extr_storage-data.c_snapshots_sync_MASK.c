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
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int* newidx_fd ; 
 int newidx_fds ; 

__attribute__((used)) static int FUNC3 (void) {
  int k, ok = 0;
  for (k = 0; k < newidx_fds; k++) {
    if (newidx_fd[k] >= 0) {
      if (FUNC1 (newidx_fd[k]) < 0) {
        FUNC2 ("%s syncing fail. %m\n", filename_newidx[k]);
        FUNC0 (newidx_fd[k]);
        newidx_fd[k] = -1;
      } else {
        ok++;
      }
    }
  }
  return ok;
}