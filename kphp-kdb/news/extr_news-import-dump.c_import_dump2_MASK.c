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
 int O_APPEND ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 char* cur_write_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ import_fd ; 
 char* import_file ; 
 int log_split_mod ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,int,...) ; 
 int FUNC6 () ; 
 scalar_t__ rend ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (int) ; 
 int verbosity ; 
 int /*<<< orphan*/ * wptr ; 
 int /*<<< orphan*/ * write_buff ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 
 scalar_t__* write_fd ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10 (void) {

  //int prev_time = 0;
  import_fd = FUNC5 (import_file, O_RDONLY);
  if (import_fd < 0) {
    FUNC2 (stderr, "Can not open dump (file %s)\n", import_file);
    return 1;
  }
  int i;
  for (i = 0; i < log_split_mod; i++) {
    FUNC3 (i);
    //write_fd[i] = open (cur_write_name, O_CREAT  | O_APPEND, 0644);
    write_fd[i] = FUNC5 (cur_write_name,  O_APPEND | O_WRONLY | O_CREAT, 0644);
    //fprintf (stderr, "(%d - %d) ", i, write_fd[i]);
    if (write_fd[i] < 0) {
      FUNC2 (stderr, "can not open file %s for write\n", cur_write_name);
      return 1;
    }
    //fprintf (stderr, "%d - %s\n", i, cur_write_name);
    wptr[i] = write_buff[i];
  }

  int xx = 0;
  while (1) {
    int a,b,c,d,e,f;
    a = FUNC6 (); b = FUNC6 (); c = FUNC6 ();
    d = FUNC6 (); e = FUNC6 (); f = FUNC6 ();
    d = FUNC4 (d);
    if (FUNC7 (d)) {
      FUNC8 (b, d, f, c);
      xx ++;
    }
    if (verbosity && !(xx & 0xfffff)) {
      FUNC2 (stderr, "written %d items\n", xx);
    }
    FUNC0 ();
    if (rptr == rend) {
      break;
    }

  }
  for (i = 0; i < log_split_mod; i++) {
    FUNC1 (i);
  }
  if (verbosity) {
    FUNC2 (stderr, "Total %d bookmarks.\n", xx);
    if (verbosity >= 2) {
      FUNC9 ();
    }
  }
  return 0;

}