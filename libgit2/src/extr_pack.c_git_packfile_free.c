
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct git_pack_file {TYPE_1__ bases; int lock; struct git_pack_file* bad_object_sha1; } ;


 int cache_free (TYPE_1__*) ;
 int git__free (struct git_pack_file*) ;
 int git_mutex_free (int *) ;
 int git_packfile_close (struct git_pack_file*,int) ;
 int pack_index_free (struct git_pack_file*) ;

void git_packfile_free(struct git_pack_file *p)
{
 if (!p)
  return;

 cache_free(&p->bases);

 git_packfile_close(p, 0);

 pack_index_free(p);

 git__free(p->bad_object_sha1);

 git_mutex_free(&p->lock);
 git_mutex_free(&p->bases.lock);
 git__free(p);
}
