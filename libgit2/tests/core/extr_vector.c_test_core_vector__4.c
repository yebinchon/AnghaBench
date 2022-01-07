
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
typedef TYPE_1__ git_vector ;


 int cl_assert (int) ;
 int compare_them ;
 int git_vector_free (TYPE_1__*) ;
 void* git_vector_get (TYPE_1__*,intptr_t) ;
 int git_vector_init (TYPE_1__*,int,int *) ;
 int git_vector_insert_sorted (TYPE_1__*,void*,int *) ;

void test_core_vector__4(void)
{
 git_vector x;
 intptr_t i;
 git_vector_init(&x, 1, &compare_them);

 for (i = 0; i < 10; i += 2) {
  git_vector_insert_sorted(&x, (void*)(i + 1), ((void*)0));
 }

 for (i = 9; i > 0; i -= 2) {
  git_vector_insert_sorted(&x, (void*)(i + 1), ((void*)0));
 }

 for (i = 0; i < 10; i += 2) {
  git_vector_insert_sorted(&x, (void*)(i + 1), ((void*)0));
 }

 for (i = 9; i > 0; i -= 2) {
  git_vector_insert_sorted(&x, (void*)(i + 1), ((void*)0));
 }

 cl_assert(x.length == 20);
 for (i = 0; i < 20; ++i) {
  cl_assert(git_vector_get(&x, i) == (void*)(i / 2 + 1));
 }

 git_vector_free(&x);
}
