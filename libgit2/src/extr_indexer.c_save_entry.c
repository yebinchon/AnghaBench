
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct git_pack_entry {int sha1; scalar_t__ offset; } ;
struct TYPE_6__ {int* id; } ;
struct entry {TYPE_2__ oid; scalar_t__ offset; scalar_t__ offset_long; } ;
typedef scalar_t__ git_off_t ;
struct TYPE_7__ {int * fanout; int objects; TYPE_1__* pack; } ;
typedef TYPE_3__ git_indexer ;
struct TYPE_5__ {int idx_cache; } ;


 int GIT_ERROR_INDEXER ;
 scalar_t__ UINT31_MAX ;
 scalar_t__ UINT32_MAX ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oidmap_exists (int ,int *) ;
 scalar_t__ git_oidmap_set (int ,int *,struct git_pack_entry*) ;
 scalar_t__ git_vector_insert (int *,struct entry*) ;

__attribute__((used)) static int save_entry(git_indexer *idx, struct entry *entry, struct git_pack_entry *pentry, git_off_t entry_start)
{
 int i;

 if (entry_start > UINT31_MAX) {
  entry->offset = UINT32_MAX;
  entry->offset_long = entry_start;
 } else {
  entry->offset = (uint32_t)entry_start;
 }

 pentry->offset = entry_start;

 if (git_oidmap_exists(idx->pack->idx_cache, &pentry->sha1) ||
     git_oidmap_set(idx->pack->idx_cache, &pentry->sha1, pentry) < 0) {
  git_error_set(GIT_ERROR_INDEXER, "cannot insert object into pack");
  return -1;
 }


 if (git_vector_insert(&idx->objects, entry) < 0)
  return -1;

 for (i = entry->oid.id[0]; i < 256; ++i) {
  idx->fanout[i]++;
 }

 return 0;
}
