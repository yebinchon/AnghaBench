
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* data; struct TYPE_2__* next; } ;


 size_t PAGE_KEY_DATA_SIZE ;
 TYPE_1__* page_key_wp ;
 size_t page_key_wx ;

void page_key_memorize(unsigned long *pfn)
{
 page_key_wp->data[page_key_wx] = *(unsigned char *) pfn;
 *(unsigned char *) pfn = 0;
 if (++page_key_wx < PAGE_KEY_DATA_SIZE)
  return;
 page_key_wp = page_key_wp->next;
 page_key_wx = 0;
}
