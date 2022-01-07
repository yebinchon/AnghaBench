
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t ssize_t ;
typedef int phys_addr_t ;


 int memcpy (char*,int ,size_t) ;
 int phys_to_virt (int ) ;

ssize_t elfcorehdr_read(char *buf, size_t count, u64 *ppos)
{
 memcpy(buf, phys_to_virt((phys_addr_t)*ppos), count);
 return count;
}
