
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loop; } ;
typedef TYPE_1__ uv_timer_t ;
struct TYPE_7__ {scalar_t__ result; scalar_t__ fs_type; int path; } ;
typedef TYPE_2__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_UTIME ;
 int helper_timer_cb_calls ;
 scalar_t__ strcmp (int ,int ) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_fs_utime (int ,TYPE_2__*,int ,int ,int ,int *) ;
 int watched_dir ;

__attribute__((used)) static void helper_timer_cb(uv_timer_t* thandle) {
  int r;
  uv_fs_t fs_req;


  r = uv_fs_utime(thandle->loop, &fs_req, watched_dir, 0, 0, ((void*)0));
  ASSERT(r == 0);
  ASSERT(fs_req.result == 0);
  ASSERT(fs_req.fs_type == UV_FS_UTIME);
  ASSERT(strcmp(fs_req.path, watched_dir) == 0);
  uv_fs_req_cleanup(&fs_req);

  helper_timer_cb_calls++;
}
