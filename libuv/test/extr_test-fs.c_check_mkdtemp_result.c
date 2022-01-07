
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int st_mode; } ;
typedef TYPE_1__ uv_stat_t ;
struct TYPE_8__ {scalar_t__ fs_type; scalar_t__ result; int path; } ;
typedef TYPE_2__ uv_fs_t ;
struct TYPE_9__ {scalar_t__ ptr; } ;


 int ASSERT (int) ;
 int S_IFDIR ;
 scalar_t__ UV_FS_MKDTEMP ;
 int check_permission (int,int) ;
 scalar_t__ memcmp (int,char*,int) ;
 TYPE_3__ stat_req ;
 int strlen (int) ;
 int uv_fs_req_cleanup (TYPE_3__*) ;
 int uv_fs_stat (int *,TYPE_3__*,int,int *) ;

__attribute__((used)) static void check_mkdtemp_result(uv_fs_t* req) {
  int r;

  ASSERT(req->fs_type == UV_FS_MKDTEMP);
  ASSERT(req->result == 0);
  ASSERT(req->path);
  ASSERT(strlen(req->path) == 15);
  ASSERT(memcmp(req->path, "test_dir_", 9) == 0);
  ASSERT(memcmp(req->path + 9, "XXXXXX", 6) != 0);
  check_permission(req->path, 0700);


  r = uv_fs_stat(((void*)0), &stat_req, req->path, ((void*)0));
  ASSERT(r == 0);
  ASSERT(((uv_stat_t*)stat_req.ptr)->st_mode & S_IFDIR);
  uv_fs_req_cleanup(&stat_req);
}
