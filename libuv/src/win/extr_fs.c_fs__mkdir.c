
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pathw; } ;
struct TYPE_5__ {int result; scalar_t__ sys_errno_; TYPE_1__ file; } ;
typedef TYPE_2__ uv_fs_t ;


 scalar_t__ ERROR_INVALID_NAME ;
 int UV_EINVAL ;
 scalar_t__ _doserrno ;
 int _wmkdir (int ) ;
 int uv_translate_sys_error (scalar_t__) ;

void fs__mkdir(uv_fs_t* req) {

  req->result = _wmkdir(req->file.pathw);
  if (req->result == -1) {
    req->sys_errno_ = _doserrno;
    req->result = req->sys_errno_ == ERROR_INVALID_NAME
                ? UV_EINVAL
                : uv_translate_sys_error(req->sys_errno_);
  }
}
