
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int git_pool ;


 int memcpy (int *,int *,int) ;

void git_pool_swap(git_pool *a, git_pool *b)
{
 git_pool temp;

 if (a == b)
  return;

 memcpy(&temp, a, sizeof(temp));
 memcpy(a, b, sizeof(temp));
 memcpy(b, &temp, sizeof(temp));
}
