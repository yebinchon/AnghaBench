
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char** strings; int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_index_entry ;
struct TYPE_7__ {char** strings; int count; } ;


 int GIT_ENOTFOUND ;
 int _index ;
 TYPE_2__ _pathspecs ;
 int _repo ;
 int _target ;
 int assert_content_in_index (TYPE_2__*,int,TYPE_1__*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_conflict_get (int const**,int const**,int const**,int ,char*) ;
 int git_reset_default (int ,int ,TYPE_2__*) ;
 int git_revparse_single (int *,int ,char*) ;
 int initialize (char*) ;

void test_reset_default__resetting_filepaths_clears_previous_conflicts(void)
{
 const git_index_entry *conflict_entry[3];
 git_strarray after;

 char *paths[] = { "conflicts-one.txt" };
 char *after_shas[] = { "1f85ca51b8e0aac893a621b61a9c2661d6aa6d81" };

 initialize("mergedrepo");

 _pathspecs.strings = paths;
 _pathspecs.count = 1;
 after.strings = after_shas;
 after.count = 1;

 cl_git_pass(git_index_conflict_get(&conflict_entry[0], &conflict_entry[1],
  &conflict_entry[2], _index, "conflicts-one.txt"));

 cl_git_pass(git_revparse_single(&_target, _repo, "9a05ccb"));
 cl_git_pass(git_reset_default(_repo, _target, &_pathspecs));

 assert_content_in_index(&_pathspecs, 1, &after);

 cl_assert_equal_i(GIT_ENOTFOUND, git_index_conflict_get(&conflict_entry[0],
  &conflict_entry[1], &conflict_entry[2], _index, "conflicts-one.txt"));
}
