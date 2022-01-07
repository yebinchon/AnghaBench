
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pack_write_context {int * stats; int * indexer; } ;
struct TYPE_7__ {int pack_oid; int repo; int odb; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_indexer_progress_cb ;
typedef int git_indexer_progress ;
struct TYPE_8__ {void* progress_cb_payload; int progress_cb; } ;
typedef TYPE_2__ git_indexer_options ;
typedef int git_indexer ;


 int GIT_CONFIGMAP_FSYNCOBJECTFILES ;
 TYPE_2__ GIT_INDEXER_OPTIONS_INIT ;
 int PREPARE_PACK ;
 int git_indexer__set_fsync (int *,int) ;
 scalar_t__ git_indexer_commit (int *,int *) ;
 int git_indexer_free (int *) ;
 int git_indexer_hash (int *) ;
 scalar_t__ git_indexer_new (int **,char const*,unsigned int,int ,TYPE_2__*) ;
 int git_oid_cpy (int *,int ) ;
 scalar_t__ git_packbuilder_foreach (TYPE_1__*,int ,struct pack_write_context*) ;
 int git_repository__configmap_lookup (int*,int ,int ) ;
 int write_cb ;

int git_packbuilder_write(
 git_packbuilder *pb,
 const char *path,
 unsigned int mode,
 git_indexer_progress_cb progress_cb,
 void *progress_cb_payload)
{
 git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
 git_indexer *indexer;
 git_indexer_progress stats;
 struct pack_write_context ctx;
 int t;

 PREPARE_PACK;

 opts.progress_cb = progress_cb;
 opts.progress_cb_payload = progress_cb_payload;

 if (git_indexer_new(
  &indexer, path, mode, pb->odb, &opts) < 0)
  return -1;

 if (!git_repository__configmap_lookup(&t, pb->repo, GIT_CONFIGMAP_FSYNCOBJECTFILES) && t)
  git_indexer__set_fsync(indexer, 1);

 ctx.indexer = indexer;
 ctx.stats = &stats;

 if (git_packbuilder_foreach(pb, write_cb, &ctx) < 0 ||
  git_indexer_commit(indexer, &stats) < 0) {
  git_indexer_free(indexer);
  return -1;
 }

 git_oid_cpy(&pb->pack_oid, git_indexer_hash(indexer));

 git_indexer_free(indexer);
 return 0;
}
