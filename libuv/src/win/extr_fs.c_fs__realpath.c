
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pathw; } ;
struct TYPE_7__ {int flags; int ptr; TYPE_1__ file; } ;
typedef TYPE_2__ uv_fs_t ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SET_REQ_RESULT (TYPE_2__*,int ) ;
 int SET_REQ_WIN32_ERROR (TYPE_2__*,int ) ;
 int UV_FS_FREE_PTR ;
 int fs__realpath_handle (scalar_t__,char**) ;

__attribute__((used)) static void fs__realpath(uv_fs_t* req) {
  HANDLE handle;

  handle = CreateFileW(req->file.pathw,
                       0,
                       0,
                       ((void*)0),
                       OPEN_EXISTING,
                       FILE_ATTRIBUTE_NORMAL | FILE_FLAG_BACKUP_SEMANTICS,
                       ((void*)0));
  if (handle == INVALID_HANDLE_VALUE) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }

  if (fs__realpath_handle(handle, (char**) &req->ptr) == -1) {
    CloseHandle(handle);
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }

  CloseHandle(handle);
  req->flags |= UV_FS_FREE_PTR;
  SET_REQ_RESULT(req, 0);
}
