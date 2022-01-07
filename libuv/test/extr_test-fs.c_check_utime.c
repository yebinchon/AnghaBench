
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {double tv_sec; double tv_nsec; } ;
struct TYPE_7__ {double tv_sec; double tv_nsec; } ;
struct TYPE_9__ {TYPE_2__ st_mtim; TYPE_1__ st_atim; } ;
typedef TYPE_3__ uv_stat_t ;
struct TYPE_10__ {scalar_t__ result; TYPE_3__ statbuf; } ;
typedef TYPE_4__ uv_fs_t ;


 int ASSERT (int) ;
 int loop ;
 int uv_fs_req_cleanup (TYPE_4__*) ;
 int uv_fs_stat (int ,TYPE_4__*,char const*,int *) ;

__attribute__((used)) static void check_utime(const char* path, double atime, double mtime) {
  uv_stat_t* s;
  uv_fs_t req;
  int r;

  r = uv_fs_stat(loop, &req, path, ((void*)0));
  ASSERT(r == 0);

  ASSERT(req.result == 0);
  s = &req.statbuf;

  ASSERT(s->st_atim.tv_sec + (s->st_atim.tv_nsec / 1000000000.0) == atime);
  ASSERT(s->st_mtim.tv_sec + (s->st_mtim.tv_nsec / 1000000000.0) == mtime);

  uv_fs_req_cleanup(&req);
}
