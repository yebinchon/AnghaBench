
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_7__ {int result; } ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_FDATASYNC ;
 int fdatasync_cb_count ;
 TYPE_1__ fdatasync_req ;
 int fsync_cb ;
 int fsync_req ;
 int loop ;
 TYPE_3__ open_req1 ;
 int uv_fs_fsync (int ,int *,int ,int ) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void fdatasync_cb(uv_fs_t* req) {
  int r;
  ASSERT(req == &fdatasync_req);
  ASSERT(req->fs_type == UV_FS_FDATASYNC);
  ASSERT(req->result == 0);
  fdatasync_cb_count++;
  uv_fs_req_cleanup(req);
  r = uv_fs_fsync(loop, &fsync_req, open_req1.result, fsync_cb);
  ASSERT(r == 0);
}
