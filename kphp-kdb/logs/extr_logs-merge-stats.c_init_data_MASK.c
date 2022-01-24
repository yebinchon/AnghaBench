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
 int engineF ; 
 int engineN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** f ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  left_files ; 
 int FUNC3 (char*,int,char*,char*,int) ; 
 char* stat_name ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (void) {
  char fname[100];
  int i;

  for (i = engineF; i < engineN; i++) {
    if (FUNC3 (fname, 100, "%s%03d", stat_name, i) >= 100) {
      FUNC2 (stderr, "Filename is too long.\n");
      FUNC0 (1);
    }
    f[i] = FUNC1 (fname, "r");
    if (f[i] == NULL) {
      FUNC2 (stderr, "File '%s' not found.\n", fname);
      FUNC0 (1);
    }
    left_files++;
  }
}