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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* cur_write_name ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ import_fd ; 
 char* import_file ; 
 int log_split_mod ; 
 int FUNC4 (int) ; 
 int FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*,int,...) ; 
 char FUNC7 () ; 
 int FUNC8 () ; 
 int* rptr ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int verbosity ; 
 int /*<<< orphan*/ * wptr ; 
 int /*<<< orphan*/ * write_buff ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int) ; 
 scalar_t__* write_fd ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14 (void) {

  //int prev_time = 0;
  import_fd = FUNC6 (import_file, O_RDONLY);
  if (import_fd < 0) {
    FUNC2 (stderr, "Can not open dump (file %s)\n", import_file);
    return 1;
  }
  int i;
  for (i = 0; i < log_split_mod; i++) {
    FUNC3 (i);
    //write_fd[i] = open (cur_write_name, O_CREAT  | O_APPEND, 0644);
    write_fd[i] = FUNC6 (cur_write_name,  O_APPEND | O_WRONLY | O_CREAT, 0644);
    //fprintf (stderr, "(%d - %d) ", i, write_fd[i]);
    if (write_fd[i] < 0) {
      FUNC2 (stderr, "can not open file %s for write\n", cur_write_name);
      return 1;
    }
    wptr[i] = write_buff[i];
  }

  int xx = 0;
  char s[1001];
  while (1) {
    int ok = 0;
    while (1) {
      int x = FUNC5 (s, 1000);
      if (x < 0) {
        break;
      }
      if (!FUNC10 (s, "VALUES", 6)) {
        //scanf ("%s\n", s);
        ok = 1;
        break;
      }
    }
    if (!ok) {
      break;
    }
    while (1) {
      FUNC9 ('(');
      int a,b,c,d,e,f;
      a = FUNC8 (); b = FUNC8 (); c = FUNC8 ();
      d = FUNC8 (); e = FUNC8 (); f = FUNC8 ();
      d = FUNC4 (d);
      if (FUNC11 (d)) {
        FUNC12 (b, d, f, c);
        xx ++;
      } else {
        FUNC2 (stderr, "assert: d = %d\n", d);
        for (i = -100; i < 100; i++) {
          FUNC2 (stderr, "%c", *(rptr + i));
        }
        FUNC2 (stderr, "\n");
      }
      if (verbosity && !(xx & 0xfffff)) {
        FUNC2 (stderr, "written %d items\n", xx);
      }

      FUNC0 (FUNC7 () == ')');
      char c1 = FUNC7 ();
      if (c1 == ';') {
        break;
      }
      if (c1 != ',') {
        FUNC2 (stderr, "assert: c = %c\n", c1);
        for (i = -100; i < 100; i++) {
          FUNC2 (stderr, "%c", *(rptr + i));
        }
        FUNC2 (stderr, "\n");

      }
      FUNC0 (c1 == ',' || c1 == '-');
    }
    /*if (prev_time != now) {
      prev_time = now;
      cron ();
    } */
  }
  for (i = 0; i < log_split_mod; i++) {
    FUNC1 (i);
  }
  if (verbosity) {
    FUNC2 (stderr, "Total %d bookmarks.\n", xx);
    if (verbosity >= 2) {
      FUNC13 ();
    }
  }
  return 0;

}