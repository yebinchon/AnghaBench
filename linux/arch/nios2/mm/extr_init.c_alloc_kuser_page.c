
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ KUSER_SIZE ;
 int flush_icache_range (unsigned long,scalar_t__) ;
 unsigned long get_zeroed_page (int ) ;
 int * kuser_page ;
 int memcpy (void*,char*,int) ;
 int virt_to_page (unsigned long) ;

__attribute__((used)) static int alloc_kuser_page(void)
{
 extern char __kuser_helper_start[], __kuser_helper_end[];
 int kuser_sz = __kuser_helper_end - __kuser_helper_start;
 unsigned long vpage;

 vpage = get_zeroed_page(GFP_ATOMIC);
 if (!vpage)
  return -ENOMEM;


 memcpy((void *)vpage, __kuser_helper_start, kuser_sz);

 flush_icache_range(vpage, vpage + KUSER_SIZE);
 kuser_page[0] = virt_to_page(vpage);

 return 0;
}
