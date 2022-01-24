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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UV_EIO ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 size_t FUNC3 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 

int FUNC6(const char* path, void* buf, size_t buflen) {
  struct stat s;
  size_t pos;
  ssize_t n;
  int fd;

  fd = FUNC5(path, O_RDONLY);

  if (fd == -1)
    return FUNC1(errno);

  if (FUNC2(fd, &s)) {
    FUNC4(fd);
    return FUNC1(errno);
  }

  if (!FUNC0(s.st_mode)) {
    FUNC4(fd);
    return UV_EIO;
  }

  for (pos = 0; pos != buflen; pos += n) {
    do
      n = FUNC3(fd, (char*) buf + pos, buflen - pos);
    while (n == -1 && errno == EINTR);

    if (n == -1) {
      FUNC4(fd);
      return FUNC1(errno);
    }

    if (n == 0) {
      FUNC4(fd);
      return UV_EIO;
    }
  }

  FUNC4(fd);
  return 0;
}