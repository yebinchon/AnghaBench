
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int HANDLE ;


 int ERROR_INVALID_HANDLE ;
 int INVALID_HANDLE_VALUE ;
 int uv__duplicate_handle (int *,int ,int *) ;
 int uv__get_osfhandle (int) ;

__attribute__((used)) static int uv__duplicate_fd(uv_loop_t* loop, int fd, HANDLE* dup) {
  HANDLE handle;

  if (fd == -1) {
    *dup = INVALID_HANDLE_VALUE;
    return ERROR_INVALID_HANDLE;
  }

  handle = uv__get_osfhandle(fd);
  return uv__duplicate_handle(loop, handle, dup);
}
