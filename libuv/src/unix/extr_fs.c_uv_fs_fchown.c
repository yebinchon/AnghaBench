
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_uid_t ;
typedef int uv_loop_t ;
typedef int uv_gid_t ;
struct TYPE_3__ {int gid; int uid; int file; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;


 int FCHOWN ;
 int INIT (int ) ;
 int POST ;

int uv_fs_fchown(uv_loop_t* loop,
                 uv_fs_t* req,
                 uv_file file,
                 uv_uid_t uid,
                 uv_gid_t gid,
                 uv_fs_cb cb) {
  INIT(FCHOWN);
  req->file = file;
  req->uid = uid;
  req->gid = gid;
  POST;
}
