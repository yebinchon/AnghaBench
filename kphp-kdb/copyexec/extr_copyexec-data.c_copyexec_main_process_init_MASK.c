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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  main_pid ; 
 int main_process_creation_time ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

void FUNC5 (void) {
  main_pid = FUNC1 ();
  main_process_creation_time = FUNC0 (main_pid);
  int t = FUNC3 (NULL) - main_process_creation_time;
  if (!(t > -10 && t < 10)) {
    FUNC4 (1, "copyexec_main_process_init: |time (NULL) - get_process_creation_time (getpid ())| >= 10\n");
  }
  FUNC2 ();
}