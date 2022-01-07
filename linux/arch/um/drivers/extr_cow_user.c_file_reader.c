
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int pread (int,char*,int,int ) ;

int file_reader(__u64 offset, char *buf, int len, void *arg)
{
 int fd = *((int *) arg);

 return pread(fd, buf, len, offset);
}
