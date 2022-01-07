
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ uv_stat_t ;
struct TYPE_6__ {scalar_t__ result; TYPE_1__ statbuf; } ;
typedef TYPE_2__ uv_fs_t ;


 int ASSERT (int) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_fs_stat (int *,TYPE_2__*,char const*,int *) ;

__attribute__((used)) static void check_permission(const char* filename, unsigned int mode) {
  int r;
  uv_fs_t req;
  uv_stat_t* s;

  r = uv_fs_stat(((void*)0), &req, filename, ((void*)0));
  ASSERT(r == 0);
  ASSERT(req.result == 0);

  s = &req.statbuf;







  ASSERT((s->st_mode & 0777) == mode);


  uv_fs_req_cleanup(&req);
}
