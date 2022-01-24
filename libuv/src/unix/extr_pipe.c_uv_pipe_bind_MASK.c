#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {char const* pipe_fname; TYPE_1__ io_watcher; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ uv_pipe_t ;
struct sockaddr_un {int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int UV_EACCES ; 
 int UV_EINVAL ; 
 int UV_ENOENT ; 
 int UV_ENOMEM ; 
 int /*<<< orphan*/  UV_HANDLE_BOUND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC9(uv_pipe_t* handle, const char* name) {
  struct sockaddr_un saddr;
  const char* pipe_fname;
  int sockfd;
  int err;

  pipe_fname = NULL;

  /* Already bound? */
  if (FUNC7(handle) >= 0)
    return UV_EINVAL;

  /* Make a copy of the file name, it outlives this function's scope. */
  pipe_fname = FUNC6(name);
  if (pipe_fname == NULL)
    return UV_ENOMEM;

  /* We've got a copy, don't touch the original any more. */
  name = NULL;

  err = FUNC5(AF_UNIX, SOCK_STREAM, 0);
  if (err < 0)
    goto err_socket;
  sockfd = err;

  FUNC2(&saddr, 0, sizeof saddr);
  FUNC8(saddr.sun_path, pipe_fname, sizeof(saddr.sun_path));
  saddr.sun_family = AF_UNIX;

  if (FUNC1(sockfd, (struct sockaddr*)&saddr, sizeof saddr)) {
    err = FUNC0(errno);
    /* Convert ENOENT to EACCES for compatibility with Windows. */
    if (err == UV_ENOENT)
      err = UV_EACCES;

    FUNC3(sockfd);
    goto err_socket;
  }

  /* Success. */
  handle->flags |= UV_HANDLE_BOUND;
  handle->pipe_fname = pipe_fname; /* Is a strdup'ed copy. */
  handle->io_watcher.fd = sockfd;
  return 0;

err_socket:
  FUNC4((void*)pipe_fname);
  return err;
}