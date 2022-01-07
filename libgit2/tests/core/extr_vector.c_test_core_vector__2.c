
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
typedef TYPE_1__ git_vector ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git__free (int*) ;
 int* git__malloc (int) ;
 int git_vector_free (TYPE_1__*) ;
 int git_vector_init (TYPE_1__*,int,int ) ;
 int git_vector_insert (TYPE_1__*,int*) ;
 int git_vector_uniq (TYPE_1__*,int *) ;
 int test_cmp ;

void test_core_vector__2(void)
{
 git_vector x;
 int *ptrs[2];

 ptrs[0] = git__malloc(sizeof(int));
 ptrs[1] = git__malloc(sizeof(int));

 *ptrs[0] = 2;
 *ptrs[1] = 1;

 cl_git_pass(git_vector_init(&x, 5, test_cmp));
 cl_git_pass(git_vector_insert(&x, ptrs[0]));
 cl_git_pass(git_vector_insert(&x, ptrs[1]));
 cl_git_pass(git_vector_insert(&x, ptrs[1]));
 cl_git_pass(git_vector_insert(&x, ptrs[0]));
 cl_git_pass(git_vector_insert(&x, ptrs[1]));
 cl_assert(x.length == 5);

 git_vector_uniq(&x, ((void*)0));
 cl_assert(x.length == 2);

 git_vector_free(&x);

 git__free(ptrs[0]);
 git__free(ptrs[1]);
}
