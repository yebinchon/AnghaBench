
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,int ) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PFN_ALIGN (int ) ;
 int PMD_PAGE_SIZE ;
 scalar_t__ _end ;
 int _text ;
 int set_memory_nonglobal (unsigned long,unsigned long) ;

__attribute__((used)) static void pti_set_kernel_image_nonglobal(void)
{






 unsigned long start = PFN_ALIGN(_text);
 unsigned long end = ALIGN((unsigned long)_end, PMD_PAGE_SIZE);






 set_memory_nonglobal(start, (end - start) >> PAGE_SHIFT);
}
