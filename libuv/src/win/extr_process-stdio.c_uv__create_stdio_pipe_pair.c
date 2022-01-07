
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ handle; int flags; scalar_t__ ipc; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef int uv_loop_t ;
typedef int pipe_name ;
struct TYPE_8__ {int nLength; scalar_t__ bInheritHandle; int * lpSecurityDescriptor; } ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 int ConnectNamedPipe (scalar_t__,int *) ;
 scalar_t__ CreateFileA (char*,int,int ,TYPE_2__*,int ,int ,int *) ;
 int ERROR_PIPE_CONNECTED ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_WRITE_ATTRIBUTES ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ GetNamedPipeHandleState (scalar_t__,int*,int *,int *,int *,int *,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int PIPE_ACCESS_INBOUND ;
 int PIPE_ACCESS_OUTBOUND ;
 int PIPE_READMODE_BYTE ;
 int PIPE_WAIT ;
 scalar_t__ TRUE ;
 int UV_HANDLE_READABLE ;
 int UV_HANDLE_WRITABLE ;
 unsigned int UV_OVERLAPPED_PIPE ;
 unsigned int UV_READABLE_PIPE ;
 unsigned int UV_WRITABLE_PIPE ;
 int assert (int) ;
 int uv_pipe_cleanup (int *,TYPE_1__*) ;
 int uv_stdio_pipe_server (int *,TYPE_1__*,int,char*,int) ;

__attribute__((used)) static int uv__create_stdio_pipe_pair(uv_loop_t* loop,
    uv_pipe_t* server_pipe, HANDLE* child_pipe_ptr, unsigned int flags) {
  char pipe_name[64];
  SECURITY_ATTRIBUTES sa;
  DWORD server_access = 0;
  DWORD client_access = 0;
  HANDLE child_pipe = INVALID_HANDLE_VALUE;
  int err;
  int overlap;

  if (flags & UV_READABLE_PIPE) {



    server_access |= PIPE_ACCESS_OUTBOUND | PIPE_ACCESS_INBOUND;
    client_access |= GENERIC_READ | FILE_WRITE_ATTRIBUTES;
  }
  if (flags & UV_WRITABLE_PIPE) {
    server_access |= PIPE_ACCESS_INBOUND;
    client_access |= GENERIC_WRITE | FILE_READ_ATTRIBUTES;
  }


  err = uv_stdio_pipe_server(loop,
                             server_pipe,
                             server_access,
                             pipe_name,
                             sizeof(pipe_name));
  if (err)
    goto error;


  sa.nLength = sizeof sa;
  sa.lpSecurityDescriptor = ((void*)0);
  sa.bInheritHandle = TRUE;

  overlap = server_pipe->ipc || (flags & UV_OVERLAPPED_PIPE);
  child_pipe = CreateFileA(pipe_name,
                           client_access,
                           0,
                           &sa,
                           OPEN_EXISTING,
                           overlap ? FILE_FLAG_OVERLAPPED : 0,
                           ((void*)0));
  if (child_pipe == INVALID_HANDLE_VALUE) {
    err = GetLastError();
    goto error;
  }



  {
    DWORD mode;
    BOOL r = GetNamedPipeHandleState(child_pipe,
                                     &mode,
                                     ((void*)0),
                                     ((void*)0),
                                     ((void*)0),
                                     ((void*)0),
                                     0);
    assert(r == TRUE);
    assert(mode == (PIPE_READMODE_BYTE | PIPE_WAIT));
  }




  if (!ConnectNamedPipe(server_pipe->handle, ((void*)0))) {
    if (GetLastError() != ERROR_PIPE_CONNECTED) {
      err = GetLastError();
      goto error;
    }
  }


  if (flags & UV_READABLE_PIPE)
    server_pipe->flags |= UV_HANDLE_WRITABLE;
  if (flags & UV_WRITABLE_PIPE)
    server_pipe->flags |= UV_HANDLE_READABLE;

  *child_pipe_ptr = child_pipe;
  return 0;

 error:
  if (server_pipe->handle != INVALID_HANDLE_VALUE) {
    uv_pipe_cleanup(loop, server_pipe);
  }

  if (child_pipe != INVALID_HANDLE_VALUE) {
    CloseHandle(child_pipe);
  }

  return err;
}
