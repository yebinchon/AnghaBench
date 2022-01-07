
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* packet_read_line_generic (int,int *,int *,int*) ;

char *packet_read_line(int fd, int *len_p)
{
 return packet_read_line_generic(fd, ((void*)0), ((void*)0), len_p);
}
