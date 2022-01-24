#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int /*<<< orphan*/  starttime; int /*<<< orphan*/  cstime; int /*<<< orphan*/  cutime; int /*<<< orphan*/  stime; int /*<<< orphan*/  utime; } ;
typedef  TYPE_1__ pid_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int TMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 

int FUNC6 (pid_t pid, pid_info_t *info) {
#define TMEM_SIZE 10000
  static char mem[TMEM_SIZE];
  FUNC4 (mem, TMEM_SIZE, "/proc/%lu/stat", (unsigned long)pid);
  int fd = FUNC2 (mem, O_RDONLY);

  if (fd == -1) {
    return 0;
  }

  int size = (int)FUNC3 (fd, mem, TMEM_SIZE - 1);
  if (size <= 0) {
    FUNC0 (fd);
    return 0;
  }
  mem[size] = 0;

  char *s = mem;
  int pass_cnt = 0;

  while (pass_cnt < 22) {
    if (pass_cnt == 12) {
      FUNC5 (s, "%llu", &info->utime);
    }
    if (pass_cnt == 13) {
      FUNC5 (s, "%llu", &info->stime);
   }
    if (pass_cnt == 14) {
      FUNC5 (s, "%llu", &info->cutime);
    }
    if (pass_cnt == 15) {
      FUNC5 (s, "%llu", &info->cstime);
    }
    if (pass_cnt == 21) {
      FUNC5 (s, "%llu", &info->starttime);
    }
    while (*s && *s != ' ') {
      s++;
    }
    if (*s == ' ') {
      s++;
      pass_cnt++;
    } else {
      FUNC1 (0, "unexpected end of proc file");
      break;
    }
  }

  FUNC0 (fd);
  return 1;
#undef TMEM_SIZE
}