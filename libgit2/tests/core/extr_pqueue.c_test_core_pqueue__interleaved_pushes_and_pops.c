
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pqueue ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cmp_ints_like_commit_time ;
 int git_pqueue_free (int *) ;
 int git_pqueue_init (int *,int ,int,int ) ;
 int git_pqueue_insert (int *,int*) ;
 int* git_pqueue_pop (int *) ;
 int git_pqueue_size (int *) ;

void test_core_pqueue__interleaved_pushes_and_pops(void)
{
 git_pqueue pq;
 int i, j, *val;
 static int commands[] =
  { 6, 9, 8, 0, 5, 0, 7, 0, 4, 3, 0, 0, 0, 4, 0, 2, 0, 1, 0, 0, -1 };
 static int expected[] =
  { 9, 8, 7, 6, 5, 4, 4, 3, 2, 1, -1 };

 cl_git_pass(git_pqueue_init(&pq, 0, 10, cmp_ints_like_commit_time));

 for (i = 0, j = 0; commands[i] >= 0; ++i) {
  if (!commands[i]) {
   cl_assert((val = git_pqueue_pop(&pq)) != ((void*)0));
   cl_assert_equal_i(expected[j], *val);
   ++j;
  } else {
   cl_git_pass(git_pqueue_insert(&pq, &commands[i]));
  }
 }

 cl_assert_equal_i(0, git_pqueue_size(&pq));
 git_pqueue_free(&pq);
}
