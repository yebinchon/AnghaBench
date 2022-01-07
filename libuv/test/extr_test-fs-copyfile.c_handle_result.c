
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ st_size; scalar_t__ st_mode; } ;
struct TYPE_7__ {scalar_t__ fs_type; scalar_t__ result; TYPE_1__ statbuf; int path; } ;
typedef TYPE_2__ uv_fs_t ;
typedef scalar_t__ uint64_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_COPYFILE ;
 int dst ;
 int result_check_count ;
 int uv_fs_req_cleanup (TYPE_2__*) ;
 int uv_fs_stat (int *,TYPE_2__*,int ,int *) ;

__attribute__((used)) static void handle_result(uv_fs_t* req) {
  uv_fs_t stat_req;
  uint64_t size;
  uint64_t mode;
  int r;

  ASSERT(req->fs_type == UV_FS_COPYFILE);
  ASSERT(req->result == 0);


  r = uv_fs_stat(((void*)0), &stat_req, req->path, ((void*)0));
  ASSERT(r == 0);
  size = stat_req.statbuf.st_size;
  mode = stat_req.statbuf.st_mode;
  uv_fs_req_cleanup(&stat_req);
  r = uv_fs_stat(((void*)0), &stat_req, dst, ((void*)0));
  ASSERT(r == 0);
  ASSERT(stat_req.statbuf.st_size == size);
  ASSERT(stat_req.statbuf.st_mode == mode);
  uv_fs_req_cleanup(&stat_req);
  uv_fs_req_cleanup(req);
  result_check_count++;
}
