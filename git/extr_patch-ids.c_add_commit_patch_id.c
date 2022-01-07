
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_ids {int patches; } ;
struct patch_id {int ent; } ;
struct commit {int dummy; } ;


 int free (struct patch_id*) ;
 int hashmap_add (int *,int *) ;
 scalar_t__ init_patch_id_entry (struct patch_id*,struct commit*,struct patch_ids*) ;
 int patch_id_defined (struct commit*) ;
 struct patch_id* xcalloc (int,int) ;

struct patch_id *add_commit_patch_id(struct commit *commit,
         struct patch_ids *ids)
{
 struct patch_id *key;

 if (!patch_id_defined(commit))
  return ((void*)0);

 key = xcalloc(1, sizeof(*key));
 if (init_patch_id_entry(key, commit, ids)) {
  free(key);
  return ((void*)0);
 }

 hashmap_add(&ids->patches, &key->ent);
 return key;
}
