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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

void FUNC4 (const pid_t pid, const char *pid_file) {
  FILE *fp;
  if (pid_file == NULL)
    return;

  if ((fp = FUNC1(pid_file, "w")) == NULL) {
    FUNC3 ("Could not open the pid file %s for writing\n", pid_file);
    return;
  }

  FUNC2(fp,"%ld\n", (long)pid);
  if (FUNC0(fp) == -1) {
    FUNC3 ("Could not close the pid file %s.\n", pid_file);
    return;
  }
}