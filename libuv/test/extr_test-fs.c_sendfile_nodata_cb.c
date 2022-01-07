
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_SENDFILE ;
 int sendfile_cb_count ;
 TYPE_1__ sendfile_req ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void sendfile_nodata_cb(uv_fs_t* req) {
  ASSERT(req == &sendfile_req);
  ASSERT(req->fs_type == UV_FS_SENDFILE);
  ASSERT(req->result == 0);
  sendfile_cb_count++;
  uv_fs_req_cleanup(req);
}
