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
struct TYPE_3__ {unsigned long long vm_peak; unsigned long long vm; unsigned long long rss_peak; unsigned long long rss; } ;
typedef  TYPE_1__ mem_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int TMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long long*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6 (pid_t pid, mem_info_t *info) {
#define TMEM_SIZE 10000
  static char mem[TMEM_SIZE];
  FUNC3 (mem, TMEM_SIZE, "/proc/%lu/status", (unsigned long)pid);
  int fd = FUNC1 (mem, O_RDONLY);

  if (fd == -1) {
    return 0;
  }

  int size = (int)FUNC2 (fd, mem, TMEM_SIZE - 1);
  if (size <= 0) {
    FUNC0 (fd);
    return 0;
  }
  mem[size] = 0;

  char *s = mem;
  while (*s) {
    char *st = s;
    while (*s != 0 && *s != '\n') {
      s++;
    }
    unsigned long long *x = NULL;
    if (FUNC5 (st, "VmPeak", 6) == 0) {
      x = &info->vm_peak;
    }
    if (FUNC5 (st, "VmSize", 6) == 0) {
      x = &info->vm;
    }
    if (FUNC5 (st, "VmHWM", 5) == 0) {
      x = &info->rss_peak;
    }
    if (FUNC5 (st, "VmRSS", 5) == 0) {
      x = &info->rss;
    }
    if (x != NULL) {
      while (st < s && *st != ' ') {
        st++;
      }
      *x = (unsigned long long)-1;

      if (st < s) {
        FUNC4 (st, "%llu", x);
      }
    }
    if (*s == 0) {
      break;
    }
    s++;
  }

  FUNC0 (fd);
  return 1;
#undef TMEM_SIZE
}