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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (long long*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,char*,long long*) ; 
 long long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 

int FUNC8 (long long *a, int m) {
  FUNC2 (a, 0, sizeof (a[0]) * m);
  char buf[1024], *p;
  int fd = FUNC3 ("/proc/self/statm", O_RDONLY), n = -1, i;
  if (fd < 0) {
    return -1;
  }
  do {
    n = FUNC4 (fd, buf, sizeof (buf));
    if (n < 0) {
      if (errno == EINTR) {
        continue;
      }
    }
    break;
  } while (1);

  while (FUNC0 (fd) < 0 && errno == EINTR) {}

  if (n < 0 || n >= sizeof (buf)) {
    return -1;
  }
  buf[n] = 0;
  FUNC7 (3, "/proc/self/statm: %s\n", buf);
  long long page_size = FUNC6 (_SC_PAGESIZE);
  p = buf;
  for (i = 0; i < m; i++) {
    if (FUNC5 (p, "%lld", &a[i]) != 1) {
      return -1;
    }
    a[i] *= page_size;
    while (*p && !FUNC1 (*p)) {
      p++;
    }
  }
  return 0;
}