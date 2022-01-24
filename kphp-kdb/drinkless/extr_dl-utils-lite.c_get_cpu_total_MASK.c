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
 int /*<<< orphan*/  O_RDONLY ; 
 int TMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 

int FUNC4 (unsigned long long *cpu_total) {
#define TMEM_SIZE 10000
  static char mem[TMEM_SIZE];
  FUNC3 (mem, TMEM_SIZE, "/proc/stat");
  int fd = FUNC1 (mem, O_RDONLY);

  if (fd == -1) {
    return 0;
  }

  int size = (int)FUNC2 (fd, mem, TMEM_SIZE - 1);
  if (size <= 0) {
    FUNC0 (fd);
    return 0;
  }

  unsigned long long sum = 0, cur = 0;
  int i;
  for (i = 0; i < size; i++) {
    int c = mem[i];
    if (c >= '0' && c <= '9') {
      cur = cur * 10 + (unsigned long long)c - '0';
    } else {
      sum += cur;
      cur = 0;
      if (c == '\n') {
        break;
      }
    }
  }

  *cpu_total = sum;

  FUNC0 (fd);
  return 1;
#undef TMEM_SIZE
}