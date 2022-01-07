
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int RTAS_FADUMP_MIN_BOOT_MEM ;

__attribute__((used)) static u64 rtas_fadump_get_bootmem_min(void)
{
 return RTAS_FADUMP_MIN_BOOT_MEM;
}
