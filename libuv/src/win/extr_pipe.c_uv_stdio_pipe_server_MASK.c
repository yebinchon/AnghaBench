#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ handle; } ;
typedef  TYPE_1__ uv_pipe_t ;
struct TYPE_7__ {int /*<<< orphan*/  iocp; } ;
typedef  TYPE_2__ uv_loop_t ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ERROR_ACCESS_DENIED ; 
 int ERROR_PIPE_BUSY ; 
 int FILE_FLAG_FIRST_PIPE_INSTANCE ; 
 int FILE_FLAG_OVERLAPPED ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int PIPE_READMODE_BYTE ; 
 int PIPE_TYPE_BYTE ; 
 int PIPE_WAIT ; 
 int WRITE_DAC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

int FUNC6(uv_loop_t* loop, uv_pipe_t* handle, DWORD access,
    char* name, size_t nameSize) {
  HANDLE pipeHandle;
  int err;
  char* ptr = (char*)handle;

  for (;;) {
    FUNC5(ptr, name, nameSize);

    pipeHandle = FUNC2(name,
      access | FILE_FLAG_OVERLAPPED | FILE_FLAG_FIRST_PIPE_INSTANCE | WRITE_DAC,
      PIPE_TYPE_BYTE | PIPE_READMODE_BYTE | PIPE_WAIT, 1, 65536, 65536, 0,
      NULL);

    if (pipeHandle != INVALID_HANDLE_VALUE) {
      /* No name collisions.  We're done. */
      break;
    }

    err = FUNC3();
    if (err != ERROR_PIPE_BUSY && err != ERROR_ACCESS_DENIED) {
      goto error;
    }

    /* Pipe name collision.  Increment the pointer and try again. */
    ptr++;
  }

  if (FUNC1(pipeHandle,
                             loop->iocp,
                             (ULONG_PTR)handle,
                             0) == NULL) {
    err = FUNC3();
    goto error;
  }

  FUNC4(handle);
  handle->handle = pipeHandle;

  return 0;

 error:
  if (pipeHandle != INVALID_HANDLE_VALUE) {
    FUNC0(pipeHandle);
  }

  return err;
}