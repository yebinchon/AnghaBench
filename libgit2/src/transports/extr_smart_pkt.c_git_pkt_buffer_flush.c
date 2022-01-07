
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_put (int *,int ,int ) ;
 int pkt_flush_str ;
 int strlen (int ) ;

int git_pkt_buffer_flush(git_buf *buf)
{
 return git_buf_put(buf, pkt_flush_str, strlen(pkt_flush_str));
}
