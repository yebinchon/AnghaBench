
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int GIT_VECTOR_INIT ;
 int cl_assert_equal_p (void*,int ) ;
 int cl_git_pass (int ) ;
 int git_vector_clear (int *) ;
 int git_vector_free (int *) ;
 int git_vector_get (int *,size_t) ;
 int git_vector_insert (int *,void*) ;
 int git_vector_reverse (int *) ;

void test_core_vector__reverse(void)
{
 git_vector v = GIT_VECTOR_INIT;
 size_t i;

 void *in1[] = {(void *) 0x0, (void *) 0x1, (void *) 0x2, (void *) 0x3};
 void *out1[] = {(void *) 0x3, (void *) 0x2, (void *) 0x1, (void *) 0x0};

 void *in2[] = {(void *) 0x0, (void *) 0x1, (void *) 0x2, (void *) 0x3, (void *) 0x4};
 void *out2[] = {(void *) 0x4, (void *) 0x3, (void *) 0x2, (void *) 0x1, (void *) 0x0};

 for (i = 0; i < 4; i++)
  cl_git_pass(git_vector_insert(&v, in1[i]));

 git_vector_reverse(&v);

 for (i = 0; i < 4; i++)
  cl_assert_equal_p(out1[i], git_vector_get(&v, i));

 git_vector_clear(&v);
 for (i = 0; i < 5; i++)
  cl_git_pass(git_vector_insert(&v, in2[i]));

 git_vector_reverse(&v);

 for (i = 0; i < 5; i++)
  cl_assert_equal_p(out2[i], git_vector_get(&v, i));

 git_vector_free(&v);
}
