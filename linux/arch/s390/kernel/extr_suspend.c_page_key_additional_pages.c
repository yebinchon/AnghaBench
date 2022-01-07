
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 int PAGE_KEY_DATA_SIZE ;

unsigned long page_key_additional_pages(unsigned long pages)
{
 return DIV_ROUND_UP(pages, PAGE_KEY_DATA_SIZE);
}
