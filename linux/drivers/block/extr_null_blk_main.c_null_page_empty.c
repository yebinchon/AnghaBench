
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_page {int bitmap; } ;


 int MAP_SZ ;
 int find_first_bit (int ,int) ;

__attribute__((used)) static bool null_page_empty(struct nullb_page *page)
{
 int size = MAP_SZ - 2;

 return find_first_bit(page->bitmap, size) == size;
}
