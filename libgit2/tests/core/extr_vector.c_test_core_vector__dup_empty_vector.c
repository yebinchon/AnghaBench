
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; int _alloc_size; int _cmp; } ;
typedef TYPE_1__ git_vector ;


 TYPE_1__ GIT_VECTOR_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_vector_dup (TYPE_1__*,TYPE_1__*,int ) ;
 int git_vector_free (TYPE_1__*) ;
 int git_vector_insert (TYPE_1__*,int*) ;

void test_core_vector__dup_empty_vector(void)
{
 git_vector v = GIT_VECTOR_INIT;
 git_vector dup = GIT_VECTOR_INIT;
 int dummy;

 cl_assert_equal_i(0, v.length);

 cl_git_pass(git_vector_dup(&dup, &v, v._cmp));
 cl_assert_equal_i(0, dup._alloc_size);
 cl_assert_equal_i(0, dup.length);

 cl_git_pass(git_vector_insert(&dup, &dummy));
 cl_assert_equal_i(8, dup._alloc_size);
 cl_assert_equal_i(1, dup.length);

 git_vector_free(&dup);
}
