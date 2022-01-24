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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned char*,int) ; 
 unsigned char* FUNC4 (int) ; 

__attribute__((used)) static unsigned char *FUNC5 (const char *path, int *l, time_t *mtime) {
  int fd = FUNC2 (path, O_RDONLY);
  if (fd < 0) {
    return NULL;
  }
  *l = FUNC1 (fd, mtime);
  if (*l < 0) {
    FUNC0 (fd);
    return NULL;
  }
  unsigned char *p = FUNC4 ((*l + 3) & -4);
  int bytes_read = FUNC3 (fd, p, *l);
  FUNC0 (fd);
  if (bytes_read != *l) {
    return NULL;
  }
  return p;
}