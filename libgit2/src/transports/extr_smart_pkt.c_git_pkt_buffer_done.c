
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_puts (int *,int ) ;
 int pkt_done_str ;

int git_pkt_buffer_done(git_buf *buf)
{
 return git_buf_puts(buf, pkt_done_str);
}
