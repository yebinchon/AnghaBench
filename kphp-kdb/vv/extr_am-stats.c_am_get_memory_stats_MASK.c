#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {long long vm_size; long long vm_rss; long long vm_data; long long mem_free; long long swap_total; long long swap_free; long long swap_used; } ;
typedef  TYPE_1__ am_memory_stat_t ;

/* Variables and functions */
 int AM_GET_MEMORY_USAGE_OVERALL ; 
 int AM_GET_MEMORY_USAGE_SELF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long long*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*,char*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 

int FUNC8 (am_memory_stat_t *S, int flags) {
  if (!flags) {
    return -1;
  }
  long long a[6];
  FUNC2 (S, 0, sizeof (*S));

  if (flags & AM_GET_MEMORY_USAGE_SELF) {
    if (FUNC0 (FUNC1 (), a, 6) < 0) {
      return -1;
    }
    S->vm_size = a[0];
    S->vm_rss = a[1];
    S->vm_data = a[5];
  }

  if (flags & AM_GET_MEMORY_USAGE_OVERALL) {
    char buf[16384], *p;
    if (FUNC3 ("/proc/meminfo", buf, sizeof (buf)) < 0) {
      return -1;
    }
    FUNC7 (4, "/proc/meminfo: %s\n", buf);
    char key[32], suffix[32];
    long long value;
    int r = 0;
    for (p = FUNC6 (buf, "\n"); p != NULL; p = FUNC6 (NULL, "\n")) {
      if (FUNC4 (p, "%31s%lld%31s", key, &value, suffix) == 3 && !FUNC5 (suffix, "kB")) {
        if (!FUNC5 (key, "MemFree:")) {
          S->mem_free = value << 10;
          r |= 1;
        } else if (!FUNC5 (key, "SwapTotal:")) {
          S->swap_total = value << 10;
          r |= 2;
        } else if (!FUNC5 (key, "SwapFree:")) {
          S->swap_free = value << 10;
          r |= 4;
        }
      }
    }
    if (r != 7) {
      return -1;
    }
    S->swap_used = S->swap_total - S->swap_free;
  }
  return 0;
}