
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long ALIGN (scalar_t__,int) ;
 int CONFIG_BLK_DEV_INITRD ;
 scalar_t__ ENTRIES_EXTENDED_MAX ;
 scalar_t__ INITRD_SIZE ;
 scalar_t__ INITRD_START ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ mem_safe_offset () ;

__attribute__((used)) static void *mem_detect_alloc_extended(void)
{
 unsigned long offset = ALIGN(mem_safe_offset(), sizeof(u64));

 if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && INITRD_START && INITRD_SIZE &&
     INITRD_START < offset + ENTRIES_EXTENDED_MAX)
  offset = ALIGN(INITRD_START + INITRD_SIZE, sizeof(u64));

 return (void *)offset;
}
