
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _a ;
 int * _b ;
 scalar_t__ _check_counts ;
 int * _counts ;
 int cl_assert_equal_i (int,int ) ;
 int git_atomic_get (int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void free_trees(void)
{
 git_tree_free(_a); _a = ((void*)0);
 git_tree_free(_b); _b = ((void*)0);

 if (_check_counts) {
  cl_assert_equal_i(288, git_atomic_get(&_counts[0]));
  cl_assert_equal_i(112, git_atomic_get(&_counts[1]));
  cl_assert_equal_i( 80, git_atomic_get(&_counts[2]));
  cl_assert_equal_i( 96, git_atomic_get(&_counts[3]));
 }
}
