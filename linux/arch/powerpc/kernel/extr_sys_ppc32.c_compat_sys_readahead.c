
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int loff_t ;
typedef int compat_ssize_t ;


 int ksys_readahead (int,int,int) ;

compat_ssize_t compat_sys_readahead(int fd, u32 r4, u32 offhi, u32 offlo, u32 count)
{
 return ksys_readahead(fd, ((loff_t)offhi << 32) | offlo, count);
}
