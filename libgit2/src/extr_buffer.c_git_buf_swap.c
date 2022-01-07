
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;



void git_buf_swap(git_buf *buf_a, git_buf *buf_b)
{
 git_buf t = *buf_a;
 *buf_a = *buf_b;
 *buf_b = t;
}
