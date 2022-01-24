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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int UV_EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 long FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 char* FUNC4 (char const*,char) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(size_t* rss) {
  char buf[1024];
  const char* s;
  ssize_t n;
  long val;
  int fd;
  int i;

  do
    fd = FUNC2("/proc/self/stat", O_RDONLY);
  while (fd == -1 && errno == EINTR);

  if (fd == -1)
    return FUNC0(errno);

  do
    n = FUNC3(fd, buf, sizeof(buf) - 1);
  while (n == -1 && errno == EINTR);

  FUNC6(fd);
  if (n == -1)
    return FUNC0(errno);
  buf[n] = '\0';

  s = FUNC4(buf, ' ');
  if (s == NULL)
    goto err;

  s += 1;
  if (*s != '(')
    goto err;

  s = FUNC4(s, ')');
  if (s == NULL)
    goto err;

  for (i = 1; i <= 22; i++) {
    s = FUNC4(s + 1, ' ');
    if (s == NULL)
      goto err;
  }

  errno = 0;
  val = FUNC5(s, NULL, 10);
  if (errno != 0)
    goto err;
  if (val < 0)
    goto err;

  *rss = val * FUNC1();
  return 0;

err:
  return UV_EINVAL;
}