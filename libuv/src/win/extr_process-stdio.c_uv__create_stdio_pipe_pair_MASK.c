#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ handle; int /*<<< orphan*/  flags; scalar_t__ ipc; } ;
typedef  TYPE_1__ uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  pipe_name ;
struct TYPE_8__ {int nLength; scalar_t__ bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ERROR_PIPE_CONNECTED ; 
 int /*<<< orphan*/  FILE_FLAG_OVERLAPPED ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_WRITE_ATTRIBUTES ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int PIPE_ACCESS_INBOUND ; 
 int PIPE_ACCESS_OUTBOUND ; 
 int PIPE_READMODE_BYTE ; 
 int PIPE_WAIT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UV_HANDLE_READABLE ; 
 int /*<<< orphan*/  UV_HANDLE_WRITABLE ; 
 unsigned int UV_OVERLAPPED_PIPE ; 
 unsigned int UV_READABLE_PIPE ; 
 unsigned int UV_WRITABLE_PIPE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int,char*,int) ; 

__attribute__((used)) static int FUNC8(uv_loop_t* loop,
    uv_pipe_t* server_pipe, HANDLE* child_pipe_ptr, unsigned int flags) {
  char pipe_name[64];
  SECURITY_ATTRIBUTES sa;
  DWORD server_access = 0;
  DWORD client_access = 0;
  HANDLE child_pipe = INVALID_HANDLE_VALUE;
  int err;
  int overlap;

  if (flags & UV_READABLE_PIPE) {
    /* The server needs inbound access too, otherwise CreateNamedPipe() won't
     * give us the FILE_READ_ATTRIBUTES permission. We need that to probe the
     * state of the write buffer when we're trying to shutdown the pipe. */
    server_access |= PIPE_ACCESS_OUTBOUND | PIPE_ACCESS_INBOUND;
    client_access |= GENERIC_READ | FILE_WRITE_ATTRIBUTES;
  }
  if (flags & UV_WRITABLE_PIPE) {
    server_access |= PIPE_ACCESS_INBOUND;
    client_access |= GENERIC_WRITE | FILE_READ_ATTRIBUTES;
  }

  /* Create server pipe handle. */
  err = FUNC7(loop,
                             server_pipe,
                             server_access,
                             pipe_name,
                             sizeof(pipe_name));
  if (err)
    goto error;

  /* Create child pipe handle. */
  sa.nLength = sizeof sa;
  sa.lpSecurityDescriptor = NULL;
  sa.bInheritHandle = TRUE;

  overlap = server_pipe->ipc || (flags & UV_OVERLAPPED_PIPE);
  child_pipe = FUNC2(pipe_name,
                           client_access,
                           0,
                           &sa,
                           OPEN_EXISTING,
                           overlap ? FILE_FLAG_OVERLAPPED : 0,
                           NULL);
  if (child_pipe == INVALID_HANDLE_VALUE) {
    err = FUNC3();
    goto error;
  }

#ifndef NDEBUG
  /* Validate that the pipe was opened in the right mode. */
  {
    DWORD mode;
    BOOL r = FUNC4(child_pipe,
                                     &mode,
                                     NULL,
                                     NULL,
                                     NULL,
                                     NULL,
                                     0);
    FUNC5(r == TRUE);
    FUNC5(mode == (PIPE_READMODE_BYTE | PIPE_WAIT));
  }
#endif

  /* Do a blocking ConnectNamedPipe. This should not block because we have both
   * ends of the pipe created. */
  if (!FUNC1(server_pipe->handle, NULL)) {
    if (FUNC3() != ERROR_PIPE_CONNECTED) {
      err = FUNC3();
      goto error;
    }
  }

  /* The server end is now readable and/or writable. */
  if (flags & UV_READABLE_PIPE)
    server_pipe->flags |= UV_HANDLE_WRITABLE;
  if (flags & UV_WRITABLE_PIPE)
    server_pipe->flags |= UV_HANDLE_READABLE;

  *child_pipe_ptr = child_pipe;
  return 0;

 error:
  if (server_pipe->handle != INVALID_HANDLE_VALUE) {
    FUNC6(loop, server_pipe);
  }

  if (child_pipe != INVALID_HANDLE_VALUE) {
    FUNC0(child_pipe);
  }

  return err;
}