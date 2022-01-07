
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_buf ;


 scalar_t__ git_buf_rfind_next (int *,char) ;
 int git_buf_truncate (int *,size_t) ;

void git_buf_rtruncate_at_char(git_buf *buf, char separator)
{
 ssize_t idx = git_buf_rfind_next(buf, separator);
 git_buf_truncate(buf, idx < 0 ? 0 : (size_t)idx);
}
