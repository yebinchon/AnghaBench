
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pqueue ;


 int GIT_PQUEUE_FIXED_SIZE ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_pqueue_free (int *) ;
 int git_pqueue_init (int *,int ,int,int *) ;
 int git_pqueue_insert (int *,int*) ;
 int git_pqueue_pop (int *) ;
 int git_pqueue_size (int *) ;

void test_core_pqueue__max_heap_size_without_comparison(void)
{
 git_pqueue pq;
 int i, vals[100] = { 0 };

 cl_git_pass(git_pqueue_init(&pq, GIT_PQUEUE_FIXED_SIZE, 50, ((void*)0)));

 for (i = 0; i < 100; ++i)
  cl_git_pass(git_pqueue_insert(&pq, &vals[i]));

 cl_assert_equal_i(50, git_pqueue_size(&pq));




 for (i = 0; i < 50; ++i)
  cl_assert(git_pqueue_pop(&pq));

 cl_assert_equal_i(0, git_pqueue_size(&pq));

 git_pqueue_free(&pq);
}
