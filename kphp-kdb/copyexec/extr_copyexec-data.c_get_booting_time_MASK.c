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
 int BUFFSIZE ; 
 char* Buff ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,char*,int*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

int FUNC8 (void) {
  int fd = FUNC3 ("/proc/stat", O_RDONLY);
  if (fd < 0) {
    FUNC2 ("get_booting_time: open (\"/proc/stat\", O_RDONLY) failed. %m\n");
    FUNC0 (1);
  }
  Buff[0] = '\n';
  int s = FUNC4 (fd, Buff + 1, BUFFSIZE - 1);
  if (s < 0) {
    FUNC1 (&fd);
    FUNC2 ("get_booting_time: read failed. %m\n");
    FUNC0 (1);
  }
  FUNC1 (&fd);
  if (s == BUFFSIZE - 1) {
    FUNC2 ("get_booting_time: BUFFSIZE (%d) too small.\n", BUFFSIZE);
    FUNC0 (1);
  }
  Buff[s] = 0;
  char *p;
  p = Buff;
  do {
    p = FUNC6 (p, "\nbtime");
    if (p == NULL) {
      FUNC7 (1, "%s\n", Buff);
      FUNC2 ("get_booting_time: btime substring didn't find.\n");
      FUNC0 (1);
    }
    int booting_time;
    if (FUNC5 (p + 6, "%d", &booting_time) == 1) {
      FUNC7 (2, "booting time is %d.\n", booting_time);
      return booting_time;
    }
    p += 6;
  } while (1);
  return 0;
}