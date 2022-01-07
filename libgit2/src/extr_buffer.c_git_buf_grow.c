
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_try_grow (int *,size_t,int) ;

int git_buf_grow(git_buf *buffer, size_t target_size)
{
 return git_buf_try_grow(buffer, target_size, 1);
}
