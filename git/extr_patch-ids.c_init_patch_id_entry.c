
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_ids {int diffopts; } ;
struct patch_id {int ent; struct commit* commit; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ commit_patch_id (struct commit*,int *,struct object_id*,int,int ) ;
 int hashmap_entry_init (int *,int ) ;
 int oidhash (struct object_id*) ;

__attribute__((used)) static int init_patch_id_entry(struct patch_id *patch,
          struct commit *commit,
          struct patch_ids *ids)
{
 struct object_id header_only_patch_id;

 patch->commit = commit;
 if (commit_patch_id(commit, &ids->diffopts, &header_only_patch_id, 1, 0))
  return -1;

 hashmap_entry_init(&patch->ent, oidhash(&header_only_patch_id));
 return 0;
}
