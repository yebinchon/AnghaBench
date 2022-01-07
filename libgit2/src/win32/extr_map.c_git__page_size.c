
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t get_page_size () ;

int git__page_size(size_t *page_size)
{
 *page_size = get_page_size();
 return 0;
}
