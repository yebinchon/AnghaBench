
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int TRAMPOLINE_32BIT_PGTABLE_OFFSET ;
 int TRAMPOLINE_32BIT_SIZE ;
 scalar_t__ __native_read_cr3 () ;
 int memcpy (void*,void*,int ) ;
 int native_write_cr3 (unsigned long) ;
 void* trampoline_32bit ;
 void* trampoline_save ;

void cleanup_trampoline(void *pgtable)
{
 void *trampoline_pgtable;

 trampoline_pgtable = trampoline_32bit + TRAMPOLINE_32BIT_PGTABLE_OFFSET / sizeof(unsigned long);





 if ((void *)__native_read_cr3() == trampoline_pgtable) {
  memcpy(pgtable, trampoline_pgtable, PAGE_SIZE);
  native_write_cr3((unsigned long)pgtable);
 }


 memcpy(trampoline_32bit, trampoline_save, TRAMPOLINE_32BIT_SIZE);
}
