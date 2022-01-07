
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int entries; } ;
typedef TYPE_1__ git_index ;


 unsigned int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 int TEST_INDEX_PATH ;
 int cl_assert (int ) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_git_pass (int ) ;
 unsigned int git_index_caps (TYPE_1__*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_get_bypath (TYPE_1__*,char*,int ) ;
 int git_index_open (TYPE_1__**,int ) ;
 int git_index_read (TYPE_1__*,int) ;
 int git_index_set_caps (TYPE_1__*,unsigned int) ;
 int git_vector_verify_sorted (int *) ;

void test_index_tests__reload_while_ignoring_case(void)
{
 git_index *index;
 unsigned int caps;

 cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));
 cl_git_pass(git_vector_verify_sorted(&index->entries));

 caps = git_index_caps(index);
 cl_git_pass(git_index_set_caps(index, caps &= ~GIT_INDEX_CAPABILITY_IGNORE_CASE));
 cl_git_pass(git_index_read(index, 1));
 cl_git_pass(git_vector_verify_sorted(&index->entries));
 cl_assert(git_index_get_bypath(index, ".HEADER", 0));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, ".header", 0));

 cl_git_pass(git_index_set_caps(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));
 cl_git_pass(git_index_read(index, 1));
 cl_git_pass(git_vector_verify_sorted(&index->entries));
 cl_assert(git_index_get_bypath(index, ".HEADER", 0));
 cl_assert(git_index_get_bypath(index, ".header", 0));

 git_index_free(index);
}
