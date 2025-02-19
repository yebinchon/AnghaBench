
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_9__ {int flags; scalar_t__ handle; TYPE_1__ u; } ;
typedef TYPE_2__ uv_pipe_t ;
struct TYPE_10__ {int iocp; } ;
typedef TYPE_3__ uv_loop_t ;
typedef int mode_info ;
typedef int ULONG_PTR ;
struct TYPE_11__ {int Mode; } ;
typedef scalar_t__ NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef scalar_t__ HANDLE ;
typedef TYPE_4__ FILE_MODE_INFORMATION ;
typedef scalar_t__ DWORD ;


 int * CreateIoCompletionPort (scalar_t__,int ,int ,int ) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int FILE_SYNCHRONOUS_IO_ALERT ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int FileModeInformation ;
 scalar_t__ GetLastError () ;
 int GetNamedPipeHandleState (scalar_t__,scalar_t__*,int *,int *,int *,int *,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ PIPE_NOWAIT ;
 scalar_t__ PIPE_READMODE_BYTE ;
 scalar_t__ PIPE_WAIT ;
 scalar_t__ STATUS_SUCCESS ;
 int SetLastError (scalar_t__) ;
 int SetNamedPipeHandleState (scalar_t__,scalar_t__*,int *,int *) ;
 int UV_EBUSY ;
 int UV_HANDLE_EMULATE_IOCP ;
 int UV_HANDLE_NON_OVERLAPPED_PIPE ;
 int UV_HANDLE_PIPESERVER ;
 scalar_t__ WSAENOTSOCK ;
 scalar_t__ pNtQueryInformationFile (scalar_t__,int *,TYPE_4__*,int,int ) ;

__attribute__((used)) static int uv_set_pipe_handle(uv_loop_t* loop,
                              uv_pipe_t* handle,
                              HANDLE pipeHandle,
                              int fd,
                              DWORD duplex_flags) {
  NTSTATUS nt_status;
  IO_STATUS_BLOCK io_status;
  FILE_MODE_INFORMATION mode_info;
  DWORD mode = PIPE_READMODE_BYTE | PIPE_WAIT;
  DWORD current_mode = 0;
  DWORD err = 0;

  if (!(handle->flags & UV_HANDLE_PIPESERVER) &&
      handle->handle != INVALID_HANDLE_VALUE)
    return UV_EBUSY;

  if (!SetNamedPipeHandleState(pipeHandle, &mode, ((void*)0), ((void*)0))) {
    err = GetLastError();
    if (err == ERROR_ACCESS_DENIED) {






      if (!GetNamedPipeHandleState(pipeHandle, &current_mode, ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), 0)) {
        return -1;
      } else if (current_mode & PIPE_NOWAIT) {
        SetLastError(ERROR_ACCESS_DENIED);
        return -1;
      }
    } else {


      if (err == ERROR_INVALID_PARAMETER) {
        SetLastError(WSAENOTSOCK);
      }
      return -1;
    }
  }


  nt_status = pNtQueryInformationFile(pipeHandle,
                                      &io_status,
                                      &mode_info,
                                      sizeof(mode_info),
                                      FileModeInformation);
  if (nt_status != STATUS_SUCCESS) {
    return -1;
  }

  if (mode_info.Mode & FILE_SYNCHRONOUS_IO_ALERT ||
      mode_info.Mode & FILE_SYNCHRONOUS_IO_NONALERT) {

    handle->flags |= UV_HANDLE_NON_OVERLAPPED_PIPE;
  } else {

    if (CreateIoCompletionPort(pipeHandle,
                               loop->iocp,
                               (ULONG_PTR)handle,
                               0) == ((void*)0)) {
      handle->flags |= UV_HANDLE_EMULATE_IOCP;
    }
  }

  handle->handle = pipeHandle;
  handle->u.fd = fd;
  handle->flags |= duplex_flags;

  return 0;
}
