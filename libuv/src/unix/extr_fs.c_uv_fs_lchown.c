
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_uid_t ;
typedef int uv_loop_t ;
typedef int uv_gid_t ;
struct TYPE_3__ {int gid; int uid; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;


 int INIT (int ) ;
 int LCHOWN ;
 int PATH ;
 int POST ;

int uv_fs_lchown(uv_loop_t* loop,
                 uv_fs_t* req,
                 const char* path,
                 uv_uid_t uid,
                 uv_gid_t gid,
                 uv_fs_cb cb) {
  INIT(LCHOWN);
  PATH;
  req->uid = uid;
  req->gid = gid;
  POST;
}
