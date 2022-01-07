
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ f_type; scalar_t__ f_bsize; scalar_t__ f_blocks; scalar_t__ f_bfree; scalar_t__ f_bavail; scalar_t__ f_files; scalar_t__ f_ffree; } ;
typedef TYPE_1__ uv_statfs_t ;
struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; TYPE_1__* ptr; } ;
typedef TYPE_2__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_STATFS ;
 int statfs_cb_count ;
 int uv_fs_req_cleanup (TYPE_2__*) ;

__attribute__((used)) static void statfs_cb(uv_fs_t* req) {
  uv_statfs_t* stats;

  ASSERT(req->fs_type == UV_FS_STATFS);
  ASSERT(req->result == 0);
  ASSERT(req->ptr != ((void*)0));
  stats = req->ptr;




  ASSERT(stats->f_type > 0);


  ASSERT(stats->f_bsize > 0);
  ASSERT(stats->f_blocks > 0);
  ASSERT(stats->f_bfree <= stats->f_blocks);
  ASSERT(stats->f_bavail <= stats->f_bfree);






  ASSERT(stats->f_ffree <= stats->f_files);

  uv_fs_req_cleanup(req);
  ASSERT(req->ptr == ((void*)0));
  statfs_cb_count++;
}
