
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {int handle; TYPE_1__ u; } ;
typedef TYPE_2__ uv_pipe_t ;


 int CloseHandle (int ) ;
 int INVALID_HANDLE_VALUE ;
 int assert (int) ;
 int close (int) ;

__attribute__((used)) static void close_pipe(uv_pipe_t* pipe) {
  assert(pipe->u.fd == -1 || pipe->u.fd > 2);
  if (pipe->u.fd == -1)
    CloseHandle(pipe->handle);
  else
    close(pipe->u.fd);

  pipe->u.fd = -1;
  pipe->handle = INVALID_HANDLE_VALUE;
}
