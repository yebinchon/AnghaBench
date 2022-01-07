
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mode; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int pathw; } ;
struct TYPE_11__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_READONLY ;
 int GetFileAttributesW (int ) ;
 int GetLastError () ;
 int INVALID_FILE_ATTRIBUTES ;
 int SET_REQ_RESULT (TYPE_4__*,int ) ;
 int SET_REQ_WIN32_ERROR (TYPE_4__*,int ) ;
 int UV_EPERM ;
 int W_OK ;

__attribute__((used)) static void fs__access(uv_fs_t* req) {
  DWORD attr = GetFileAttributesW(req->file.pathw);

  if (attr == INVALID_FILE_ATTRIBUTES) {
    SET_REQ_WIN32_ERROR(req, GetLastError());
    return;
  }
  if (!(req->fs.info.mode & W_OK) ||
      !(attr & FILE_ATTRIBUTE_READONLY) ||
      (attr & FILE_ATTRIBUTE_DIRECTORY)) {
    SET_REQ_RESULT(req, 0);
  } else {
    SET_REQ_WIN32_ERROR(req, UV_EPERM);
  }

}
