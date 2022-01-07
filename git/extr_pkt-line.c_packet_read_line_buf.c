
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* packet_read_line_generic (int,char**,size_t*,int*) ;

char *packet_read_line_buf(char **src, size_t *src_len, int *dst_len)
{
 return packet_read_line_generic(-1, src, src_len, dst_len);
}
