
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mtime; int atime; } ;
struct TYPE_10__ {TYPE_2__ time; } ;
struct TYPE_8__ {int fd; } ;
struct TYPE_11__ {scalar_t__ result; TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef scalar_t__ HANDLE ;


 int ERROR_INVALID_HANDLE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int ) ;
 int VERIFY_FD (int,TYPE_4__*) ;
 scalar_t__ fs__utime_handle (scalar_t__,int ,int ) ;
 scalar_t__ uv__get_osfhandle (int) ;

__attribute__((used)) static void fs__futime(uv_fs_t* req) {
  int fd = req->file.fd;
  HANDLE handle;
  VERIFY_FD(fd, req);

  handle = uv__get_osfhandle(fd);

  if (handle == INVALID_HANDLE_VALUE) {
    SET_REQ_WIN32_ERROR(req, ERROR_INVALID_HANDLE);
    return;
  }

  if (fs__utime_handle(handle, req->fs.time.atime, req->fs.time.mtime) != 0) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }

  req->result = 0;
}
