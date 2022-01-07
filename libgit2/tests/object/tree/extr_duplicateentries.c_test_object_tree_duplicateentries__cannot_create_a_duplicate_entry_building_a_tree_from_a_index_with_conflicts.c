
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_index ;


 int GIT_EUNMERGED ;
 int _repo ;
 int add_fake_conflicts (int *) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_repository_index (int **,int ) ;

void test_object_tree_duplicateentries__cannot_create_a_duplicate_entry_building_a_tree_from_a_index_with_conflicts(void)
{
 git_index *index;
 git_oid tid;

 cl_git_pass(git_repository_index(&index, _repo));

 add_fake_conflicts(index);

 cl_assert_equal_i(GIT_EUNMERGED, git_index_write_tree(&tid, index));

 git_index_free(index);
}
