
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct merge_reuc_entry {scalar_t__ ancestor_mode; scalar_t__ our_mode; scalar_t__ their_mode; int their_oid_str; int our_oid_str; int ancestor_oid_str; int path; } ;
typedef int git_oid ;
struct TYPE_3__ {scalar_t__* mode; int * oid; int path; } ;
typedef TYPE_1__ git_index_reuc_entry ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 size_t git_index_reuc_entrycount (int *) ;
 TYPE_1__* git_index_reuc_get_byindex (int *,size_t) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int merge_test_reuc(git_index *index, const struct merge_reuc_entry expected[], size_t expected_len)
{
 size_t i;
 const git_index_reuc_entry *reuc_entry;
 git_oid expected_oid;





 if (git_index_reuc_entrycount(index) != expected_len)
  return 0;

 for (i = 0; i < expected_len; i++) {
  if ((reuc_entry = git_index_reuc_get_byindex(index, i)) == ((void*)0))
   return 0;

  if (strcmp(reuc_entry->path, expected[i].path) != 0 ||
   reuc_entry->mode[0] != expected[i].ancestor_mode ||
   reuc_entry->mode[1] != expected[i].our_mode ||
   reuc_entry->mode[2] != expected[i].their_mode)
   return 0;

  if (expected[i].ancestor_mode > 0) {
   cl_git_pass(git_oid_fromstr(&expected_oid, expected[i].ancestor_oid_str));

   if (git_oid_cmp(&reuc_entry->oid[0], &expected_oid) != 0)
    return 0;
  }

  if (expected[i].our_mode > 0) {
   cl_git_pass(git_oid_fromstr(&expected_oid, expected[i].our_oid_str));

   if (git_oid_cmp(&reuc_entry->oid[1], &expected_oid) != 0)
    return 0;
  }

  if (expected[i].their_mode > 0) {
   cl_git_pass(git_oid_fromstr(&expected_oid, expected[i].their_oid_str));

   if (git_oid_cmp(&reuc_entry->oid[2], &expected_oid) != 0)
    return 0;
  }
 }

 return 1;
}
