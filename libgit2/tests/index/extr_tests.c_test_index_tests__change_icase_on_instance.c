
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_12__ {int entries; int ignore_case; } ;
typedef TYPE_2__ git_index ;


 unsigned int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 int TEST_INDEX_PATH ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_p (int *,TYPE_1__ const*) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 unsigned int git_index_caps (TYPE_2__*) ;
 int git_index_free (TYPE_2__*) ;
 TYPE_1__* git_index_get_bypath (TYPE_2__*,char*,int ) ;
 int git_index_open (TYPE_2__**,int ) ;
 int git_index_set_caps (TYPE_2__*,unsigned int) ;
 int git_vector_verify_sorted (int *) ;

void test_index_tests__change_icase_on_instance(void)
{
 git_index *index;
 unsigned int caps;
 const git_index_entry *e;

 cl_git_pass(git_index_open(&index, TEST_INDEX_PATH));
 cl_git_pass(git_vector_verify_sorted(&index->entries));

 caps = git_index_caps(index);
 cl_git_pass(git_index_set_caps(index, caps &= ~GIT_INDEX_CAPABILITY_IGNORE_CASE));
 cl_assert_equal_i(0, index->ignore_case);
 cl_git_pass(git_vector_verify_sorted(&index->entries));
 cl_assert(e = git_index_get_bypath(index, "src/common.h", 0));
 cl_assert_equal_p(((void*)0), e = git_index_get_bypath(index, "SRC/Common.h", 0));
 cl_assert(e = git_index_get_bypath(index, "COPYING", 0));
 cl_assert_equal_p(((void*)0), e = git_index_get_bypath(index, "copying", 0));

 cl_git_pass(git_index_set_caps(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));
 cl_assert_equal_i(1, index->ignore_case);
 cl_git_pass(git_vector_verify_sorted(&index->entries));
 cl_assert(e = git_index_get_bypath(index, "COPYING", 0));
 cl_assert_equal_s("COPYING", e->path);
 cl_assert(e = git_index_get_bypath(index, "copying", 0));
 cl_assert_equal_s("COPYING", e->path);

 git_index_free(index);
}
