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
typedef  int /*<<< orphan*/  proc_filename ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,long long*,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int,char*,int) ; 

int FUNC4 (pid_t pid, long long *a, int m) {
  char proc_filename[32];
  char buf[4096];
  FUNC0 (FUNC3 (proc_filename, sizeof (proc_filename), "/proc/%d/statm",  (int) pid) < sizeof (proc_filename));
  if (FUNC2 (proc_filename, buf, sizeof (buf)) < 0) {
    return -1;
  }
  return FUNC1 (buf, a, m);
}