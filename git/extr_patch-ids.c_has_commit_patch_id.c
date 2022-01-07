
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_ids {int patches; } ;
struct patch_id {int dummy; } ;
struct commit {int dummy; } ;
typedef int patch ;


 int ent ;
 struct patch_id* hashmap_get_entry (int *,struct patch_id*,int ,int *) ;
 scalar_t__ init_patch_id_entry (struct patch_id*,struct commit*,struct patch_ids*) ;
 int memset (struct patch_id*,int ,int) ;
 int patch_id_defined (struct commit*) ;

struct patch_id *has_commit_patch_id(struct commit *commit,
         struct patch_ids *ids)
{
 struct patch_id patch;

 if (!patch_id_defined(commit))
  return ((void*)0);

 memset(&patch, 0, sizeof(patch));
 if (init_patch_id_entry(&patch, commit, ids))
  return ((void*)0);

 return hashmap_get_entry(&ids->patches, &patch, ent, ((void*)0));
}
