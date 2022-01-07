
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_7__ {int id; } ;
typedef TYPE_2__ git_index_entry ;


 int GIT_ENOTFOUND ;
 int _index ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_index_find (size_t*,int ,int ) ;
 TYPE_2__* git_index_get_byindex (int ,size_t) ;
 int git_oid_streq (int *,int ) ;

__attribute__((used)) static void assert_content_in_index(
 git_strarray *pathspecs,
 bool should_exist,
 git_strarray *expected_shas)
{
 size_t i, pos;
 int error;

 for (i = 0; i < pathspecs->count; i++) {
  error = git_index_find(&pos, _index, pathspecs->strings[i]);

  if (should_exist) {
   const git_index_entry *entry;

   cl_assert(error != GIT_ENOTFOUND);

   entry = git_index_get_byindex(_index, pos);
   cl_assert(entry != ((void*)0));

   if (!expected_shas)
    continue;

   cl_git_pass(git_oid_streq(&entry->id, expected_shas->strings[i]));
  } else
   cl_assert_equal_i(should_exist, error != GIT_ENOTFOUND);
 }
}
