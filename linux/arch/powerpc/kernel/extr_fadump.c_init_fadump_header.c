
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fadump_crash_info_header {unsigned long elfcorehdr_addr; int crashing_cpu; int magic_number; } ;


 int FADUMP_CPU_UNKNOWN ;
 int FADUMP_CRASH_INFO_MAGIC ;
 struct fadump_crash_info_header* __va (unsigned long) ;
 int memset (struct fadump_crash_info_header*,int ,int) ;

__attribute__((used)) static unsigned long init_fadump_header(unsigned long addr)
{
 struct fadump_crash_info_header *fdh;

 if (!addr)
  return 0;

 fdh = __va(addr);
 addr += sizeof(struct fadump_crash_info_header);

 memset(fdh, 0, sizeof(struct fadump_crash_info_header));
 fdh->magic_number = FADUMP_CRASH_INFO_MAGIC;
 fdh->elfcorehdr_addr = addr;

 fdh->crashing_cpu = FADUMP_CPU_UNKNOWN;

 return addr;
}
