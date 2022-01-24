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
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (int,char*,int) ; 

int FUNC7 (int oom_score_adj) {
  static char path[64], str[16];
  FUNC0 (FUNC5 (path, "/proc/%d/oom_score_adj", FUNC2()) < 64);
  int l = FUNC5 (str, "%d", oom_score_adj);
  FUNC0 (l <= 15);
  int fd = FUNC4 (path, O_WRONLY | O_TRUNC);
  if (fd < 0) {
    FUNC3 ("cannot write to %s : %m\n", path);
    return -1;
  }
  int w = FUNC6 (fd, str, l);
  if (w < 0) {
    FUNC3 ("cannot write to %s : %m\n", path);
    FUNC1 (fd);
    return -1;
  }
  FUNC1 (fd);
  return (w == l);
}