
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {unsigned char* data; struct TYPE_2__* next; } ;


 size_t PAGE_KEY_DATA_SIZE ;
 int arch_set_page_dat (struct page*,int ) ;
 int arch_set_page_nodat (struct page*,int ) ;
 TYPE_1__* page_key_rp ;
 size_t page_key_rx ;
 int page_set_storage_key (unsigned long,unsigned char,int ) ;
 struct page* virt_to_page (void*) ;

void page_key_write(void *address)
{
 struct page *page;
 unsigned char key;

 key = page_key_rp->data[page_key_rx];
 page_set_storage_key((unsigned long) address, key & 0x7f, 0);
 page = virt_to_page(address);
 if (key & 0x80)
  arch_set_page_nodat(page, 0);
 else
  arch_set_page_dat(page, 0);
 if (++page_key_rx >= PAGE_KEY_DATA_SIZE)
  return;
 page_key_rp = page_key_rp->next;
 page_key_rx = 0;
}
