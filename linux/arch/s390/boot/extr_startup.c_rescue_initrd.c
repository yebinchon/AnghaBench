
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_BLK_DEV_INITRD ;
 int INITRD_SIZE ;
 unsigned long INITRD_START ;
 int IS_ENABLED (int ) ;
 int memmove (void*,void*,int ) ;

__attribute__((used)) static void rescue_initrd(unsigned long addr)
{
 if (!IS_ENABLED(CONFIG_BLK_DEV_INITRD))
  return;
 if (!INITRD_START || !INITRD_SIZE)
  return;
 if (addr <= INITRD_START)
  return;
 memmove((void *)addr, (void *)INITRD_START, INITRD_SIZE);
 INITRD_START = addr;
}
