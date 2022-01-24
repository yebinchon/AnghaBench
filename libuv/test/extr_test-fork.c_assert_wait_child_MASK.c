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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(pid_t child_pid) {
  pid_t waited_pid;
  int child_stat;

  waited_pid = FUNC6(child_pid, &child_stat, 0);
  FUNC5("Waited pid is %d with status %d\n", waited_pid, child_stat);
  if (waited_pid == -1) {
    FUNC4("Failed to wait");
  }
  FUNC0(child_pid == waited_pid);
  FUNC0(FUNC2(child_stat)); /* Clean exit, not a signal. */
  FUNC0(!FUNC3(child_stat));
  FUNC0(0 == FUNC1(child_stat));
}