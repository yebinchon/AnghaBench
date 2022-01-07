
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

void test_core_pqueue__interleave_inserts_and_pops(void)
{
 git_pqueue pq;
 int chunk, v, i, vals[200];

 cl_git_pass(git_pqueue_init(&pq, 0, 20, cmp_ints));

 for (v = 0, chunk = 20; chunk <= 200; chunk += 20) {

  for (; v < chunk; ++v) {
   vals[v] = (v & 1) ? 200 - v : v;
   cl_git_pass(git_pqueue_insert(&pq, &vals[v]));
  }


  for (i = 0; i < 10; ++i)
   (void)git_pqueue_pop(&pq);
 }

 cl_assert_equal_i(100, git_pqueue_size(&pq));



 for (v = 100; v < 200; ++v) {
  void *p = git_pqueue_pop(&pq);
  cl_assert(p);
  cl_assert_equal_i(v, *(int *)p);
 }

 cl_assert_equal_i(0, git_pqueue_size(&pq));

 git_pqueue_free(&pq);
}
