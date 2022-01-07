
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct merge_index_entry {scalar_t__ mode; scalar_t__ stage; int path; int oid_str; } ;
typedef int git_oid ;
struct TYPE_4__ {scalar_t__ mode; int * path; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int cl_git_pass (int ) ;
 scalar_t__ git_index_entry_stage (TYPE_1__ const*) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 scalar_t__ strcmp (int *,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int index_entry_eq_merge_index_entry(const struct merge_index_entry *expected, const git_index_entry *actual)
{
 git_oid expected_oid;
 bool test_oid;

 if (strlen(expected->oid_str) != 0) {
  cl_git_pass(git_oid_fromstr(&expected_oid, expected->oid_str));
  test_oid = 1;
 } else
  test_oid = 0;

 if (actual->mode != expected->mode ||
  (test_oid && git_oid_cmp(&actual->id, &expected_oid) != 0) ||
  git_index_entry_stage(actual) != expected->stage)
  return 0;

 if (actual->mode == 0 && (actual->path != ((void*)0) || strlen(expected->path) > 0))
  return 0;

 if (actual->mode != 0 && (strcmp(actual->path, expected->path) != 0))
  return 0;

 return 1;
}
