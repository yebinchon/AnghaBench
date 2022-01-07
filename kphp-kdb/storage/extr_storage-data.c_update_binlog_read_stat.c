
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t dir_id; int st_read; } ;
typedef TYPE_1__ storage_binlog_file_t ;
struct TYPE_9__ {scalar_t__ refcnt; TYPE_1__* B; } ;
typedef TYPE_2__ metafile_t ;
struct TYPE_10__ {int st_read; } ;


 TYPE_7__* Dirs ;
 int bad_image_cache_store (TYPE_1__*,TYPE_2__*) ;
 int metafile_free (TYPE_2__*) ;
 int update_read_stat (int *,int) ;

void update_binlog_read_stat (metafile_t *meta, int success) {
  storage_binlog_file_t *B = meta->B;
  update_read_stat (&Dirs[B->dir_id].st_read, success);
  update_read_stat (&B->st_read, success);
  if (!success) {
    bad_image_cache_store (B, meta);
    if (meta->refcnt <= 0) {
      metafile_free (meta);
    }
  }
}
