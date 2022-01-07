
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pqueue ;


 int cl_assert (void*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cmp_ints ;
 int git_pqueue_free (int *) ;
 int git_pqueue_init (int *,int ,int,int ) ;
 int git_pqueue_insert (int *,int*) ;
 void* git_pqueue_pop (int *) ;
 int git_pqueue_size (int *) ;

void test_core_pqueue__items_are_put_in_order(void)
{
 git_pqueue pq;
 int i, vals[20];

 cl_git_pass(git_pqueue_init(&pq, 0, 20, cmp_ints));

 for (i = 0; i < 20; ++i) {
  if (i < 10)
   vals[i] = 10 - i;
  else
   vals[i] = i + 1;

  cl_git_pass(git_pqueue_insert(&pq, &vals[i]));
 }

 cl_assert_equal_i(20, git_pqueue_size(&pq));

 for (i = 1; i <= 20; ++i) {
  void *p = git_pqueue_pop(&pq);
  cl_assert(p);
  cl_assert_equal_i(i, *(int *)p);
 }

 cl_assert_equal_i(0, git_pqueue_size(&pq));

 git_pqueue_free(&pq);
}
