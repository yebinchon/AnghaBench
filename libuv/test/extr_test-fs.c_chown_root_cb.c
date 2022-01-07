
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EINVAL ;
 scalar_t__ UV_EPERM ;
 scalar_t__ UV_FS_CHOWN ;
 int chown_cb_count ;
 scalar_t__ geteuid () ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void chown_root_cb(uv_fs_t* req) {
  ASSERT(req->fs_type == UV_FS_CHOWN);







  if (geteuid() == 0)
    ASSERT(req->result == 0);
  else




    ASSERT(req->result == UV_EPERM);


  chown_cb_count++;
  uv_fs_req_cleanup(req);
}
