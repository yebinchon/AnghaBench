
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int git_vector ;


 int assert (int) ;
 int memcpy (int *,int *,int) ;

void git_vector_swap(git_vector *a, git_vector *b)
{
 git_vector t;

 assert(a && b);

 if (a != b) {
  memcpy(&t, a, sizeof(t));
  memcpy(a, b, sizeof(t));
  memcpy(b, &t, sizeof(t));
 }
}
