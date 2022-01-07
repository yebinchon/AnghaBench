
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result; } ;
typedef TYPE_1__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_ECANCELED ;
 int fs_cb_called ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void fs_cb(uv_fs_t* req) {
  ASSERT(req->result == UV_ECANCELED);
  uv_fs_req_cleanup(req);
  fs_cb_called++;
}
