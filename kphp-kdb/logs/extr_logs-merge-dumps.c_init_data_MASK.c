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
 int BUFF_SIZE ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 char* dump_name ; 
 int engineF ; 
 int engineN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void** f_buff ; 
 void* f_buff_r ; 
 void* f_buff_size ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  left_files ; 
 int FUNC5 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6 (void) {
  char fname[100];
  int i;

  f_buff = FUNC0 (sizeof (char *) * engineN);
  f_buff_size = FUNC1 (sizeof (int) * engineN);
  f_buff_r = FUNC1 (sizeof (int) * engineN);

  for (i = engineF; i < engineN; i++) {
//    if (snprintf (fname, 100, "%s%03d", dump_name, i) >= 100) {
    if (FUNC5 (fname, 100, "%s%d.dump", dump_name, i) >= 100) {
      FUNC4 (stderr, "Filename is too long.\n");
      FUNC3 (1);
    }
    if (FUNC2 (i, fname, -1) < 0) {
      FUNC4 (stderr, "File '%s' not found.\n", fname);
      fd[i] = -1;
      continue;
    } else {
//      fprintf (stderr, "Opened file '%s' by pid %d.\n", fname, fd[i]);
    }
    left_files++;
    f_buff[i] = FUNC0 (sizeof (char) * BUFF_SIZE);
  }
}