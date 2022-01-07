
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zstream; int ctx; int object_pool; scalar_t__ walk_objects; struct TYPE_4__* object_list; scalar_t__ object_ix; scalar_t__ odb; int progress_cond; int progress_mutex; int cache_mutex; } ;
typedef TYPE_1__ git_packbuilder ;


 int git__free (TYPE_1__*) ;
 int git_cond_free (int *) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_mutex_free (int *) ;
 int git_odb_free (scalar_t__) ;
 int git_oidmap_free (scalar_t__) ;
 int git_pool_clear (int *) ;
 int git_zstream_free (int *) ;

void git_packbuilder_free(git_packbuilder *pb)
{
 if (pb == ((void*)0))
  return;
 if (pb->odb)
  git_odb_free(pb->odb);

 if (pb->object_ix)
  git_oidmap_free(pb->object_ix);

 if (pb->object_list)
  git__free(pb->object_list);

 git_oidmap_free(pb->walk_objects);
 git_pool_clear(&pb->object_pool);

 git_hash_ctx_cleanup(&pb->ctx);
 git_zstream_free(&pb->zstream);

 git__free(pb);
}
