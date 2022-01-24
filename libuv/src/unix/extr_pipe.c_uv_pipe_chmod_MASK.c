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
typedef  int /*<<< orphan*/  uv_pipe_t ;
struct stat {unsigned int st_mode; } ;

/* Variables and functions */
 unsigned int S_IRGRP ; 
 unsigned int S_IROTH ; 
 unsigned int S_IRUSR ; 
 unsigned int S_IWGRP ; 
 unsigned int S_IWOTH ; 
 unsigned int S_IWUSR ; 
 int UV_EBADF ; 
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int UV_ENOMEM ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*,unsigned int) ; 
 int errno ; 
 int FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,size_t*) ; 

int FUNC7(uv_pipe_t* handle, int mode) {
  unsigned desired_mode;
  struct stat pipe_stat;
  char* name_buffer;
  size_t name_len;
  int r;

  if (handle == NULL || FUNC5(handle) == -1)
    return UV_EBADF;

  if (mode != UV_READABLE &&
      mode != UV_WRITABLE &&
      mode != (UV_WRITABLE | UV_READABLE))
    return UV_EINVAL;

  /* Unfortunately fchmod does not work on all platforms, we will use chmod. */
  name_len = 0;
  r = FUNC6(handle, NULL, &name_len);
  if (r != UV_ENOBUFS)
    return r;

  name_buffer = FUNC4(name_len);
  if (name_buffer == NULL)
    return UV_ENOMEM;

  r = FUNC6(handle, name_buffer, &name_len);
  if (r != 0) {
    FUNC3(name_buffer);
    return r;
  }

  /* stat must be used as fstat has a bug on Darwin */
  if (FUNC2(name_buffer, &pipe_stat) == -1) {
    FUNC3(name_buffer);
    return -errno;
  }

  desired_mode = 0;
  if (mode & UV_READABLE)
    desired_mode |= S_IRUSR | S_IRGRP | S_IROTH;
  if (mode & UV_WRITABLE)
    desired_mode |= S_IWUSR | S_IWGRP | S_IWOTH;

  /* Exit early if pipe already has desired mode. */
  if ((pipe_stat.st_mode & desired_mode) == desired_mode) {
    FUNC3(name_buffer);
    return 0;
  }

  pipe_stat.st_mode |= desired_mode;

  r = FUNC1(name_buffer, pipe_stat.st_mode);
  FUNC3(name_buffer);

  return r != -1 ? 0 : FUNC0(errno);
}