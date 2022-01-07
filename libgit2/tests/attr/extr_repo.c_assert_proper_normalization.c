
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int CONTENT ;
 int add_to_workdir (char const*,int ) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char const*) ;
 int git_index_find (size_t*,int *,char const*) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 int git_oid_streq (int *,char const*) ;

__attribute__((used)) static void assert_proper_normalization(git_index *index, const char *filename, const char *expected_sha)
{
 size_t index_pos;
 const git_index_entry *entry;

 add_to_workdir(filename, CONTENT);
 cl_git_pass(git_index_add_bypath(index, filename));

 cl_assert(!git_index_find(&index_pos, index, filename));

 entry = git_index_get_byindex(index, index_pos);
 cl_assert_equal_i(0, git_oid_streq(&entry->id, expected_sha));
}
