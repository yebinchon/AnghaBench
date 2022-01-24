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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 unsigned char* FUNC4 (int) ; 

__attribute__((used)) static unsigned char *FUNC5 (const char *path, int l) {
  int fd = FUNC1 (path, O_RDONLY);
  if (fd < 0) {
    FUNC3 (1, "Couldn't open %s for reading. %m\n", path);
    return NULL;
  }
  unsigned char *p = FUNC4 (l > 0 ? l : 1);
  int bytes_read = FUNC2 (fd, p, l);
  FUNC0 (fd);
  if (bytes_read != l) {
    FUNC3 (1, "read %d bytes of %d from %s. %m\n", bytes_read, l, path);
    return NULL;
  }
  return p;
}