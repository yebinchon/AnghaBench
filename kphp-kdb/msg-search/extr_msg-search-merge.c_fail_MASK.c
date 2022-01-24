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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* fd ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4 (void) {
  int i;
  FUNC2 (stderr, "fatal error, deleting all output files...\n");
  for (i = 2; i <= 4; i++) {
    if (fd[i] >= 0) { FUNC0 (fd[2]); }
    if (fnames[i]) { 
      FUNC2 (stderr, "deleting %s\n", fnames[i]); 
      FUNC3 (fnames[i]); 
    }
  }
  FUNC1 (2);
}