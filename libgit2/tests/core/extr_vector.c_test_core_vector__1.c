
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int git_vector_free (int *) ;
 int git_vector_init (int *,int,int *) ;
 int git_vector_insert (int *,void*) ;
 int git_vector_remove (int *,int ) ;

void test_core_vector__1(void)
{
 git_vector x;

 git_vector_init(&x, 3, ((void*)0));
 git_vector_insert(&x, (void*) 0xabc);
 git_vector_insert(&x, (void*) 0xdef);
 git_vector_insert(&x, (void*) 0x123);

 git_vector_remove(&x, 0);
 git_vector_free(&x);
}
