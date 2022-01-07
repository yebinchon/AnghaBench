
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mtime; int atime; } ;
struct TYPE_7__ {TYPE_3__ time; } ;
struct TYPE_8__ {int pathw; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_1__ fs; TYPE_2__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int,int *,int ,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_WRITE_ATTRIBUTES ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int ) ;
 scalar_t__ fs__utime_handle (scalar_t__,int ,int ) ;

__attribute__((used)) static void fs__utime(uv_fs_t* req) {
  HANDLE handle;

  handle = CreateFileW(req->file.pathw,
                       FILE_WRITE_ATTRIBUTES,
                       FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                       ((void*)0),
                       OPEN_EXISTING,
                       FILE_FLAG_BACKUP_SEMANTICS,
                       ((void*)0));

  if (handle == INVALID_HANDLE_VALUE) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }

  if (fs__utime_handle(handle, req->fs.time.atime, req->fs.time.mtime) != 0) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    CloseHandle(handle);
    return;
  }

  CloseHandle(handle);

  req->result = 0;
}
