
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_dispose (int *) ;

void git_buf_free(git_buf *buf)
{
 git_buf_dispose(buf);
}
