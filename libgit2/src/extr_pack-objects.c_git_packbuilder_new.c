
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct walk_object {int dummy; } ;
typedef int git_repository ;
struct TYPE_7__ {int nr_threads; int progress_cond; int progress_mutex; int cache_mutex; int odb; int zstream; int ctx; int * repo; int object_pool; int walk_objects; int object_ix; } ;
typedef TYPE_1__ git_packbuilder ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_OS ;
 int GIT_ZSTREAM_DEFLATE ;
 TYPE_1__* git__calloc (int,int) ;
 scalar_t__ git_cond_init (int *) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_hash_ctx_init (int *) ;
 scalar_t__ git_mutex_init (int *) ;
 scalar_t__ git_oidmap_new (int *) ;
 int git_packbuilder_free (TYPE_1__*) ;
 int git_pool_init (int *,int) ;
 scalar_t__ git_repository_odb (int *,int *) ;
 scalar_t__ git_zstream_init (int *,int ) ;
 scalar_t__ packbuilder_config (TYPE_1__*) ;

int git_packbuilder_new(git_packbuilder **out, git_repository *repo)
{
 git_packbuilder *pb;

 *out = ((void*)0);

 pb = git__calloc(1, sizeof(*pb));
 GIT_ERROR_CHECK_ALLOC(pb);

 if (git_oidmap_new(&pb->object_ix) < 0)
  goto on_error;

 if (git_oidmap_new(&pb->walk_objects) < 0)
  goto on_error;

 git_pool_init(&pb->object_pool, sizeof(struct walk_object));

 pb->repo = repo;
 pb->nr_threads = 1;

 if (git_hash_ctx_init(&pb->ctx) < 0 ||
  git_zstream_init(&pb->zstream, GIT_ZSTREAM_DEFLATE) < 0 ||
  git_repository_odb(&pb->odb, repo) < 0 ||
  packbuilder_config(pb) < 0)
  goto on_error;
 *out = pb;
 return 0;

on_error:
 git_packbuilder_free(pb);
 return -1;
}
