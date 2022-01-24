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
struct rlimit {int rlim_cur; int rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 

int FUNC3 (int maxfiles) {
  struct rlimit rlim;
  
  if (FUNC0(RLIMIT_NOFILE, &rlim) != 0) {
    FUNC1 ("failed to getrlimit number of files\n");
    return -1;
  } else {
    if (rlim.rlim_cur < maxfiles)
      rlim.rlim_cur = maxfiles + 3;
    if (rlim.rlim_max < rlim.rlim_cur)
      rlim.rlim_max = rlim.rlim_cur;
    if (FUNC2(RLIMIT_NOFILE, &rlim) != 0) {
      FUNC1 ("failed to set rlimit for open files. Try running as root or requesting smaller maxconns value.\n");
      return -1;
    }
  }
  return 0;
}