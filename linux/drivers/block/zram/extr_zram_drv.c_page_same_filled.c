
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static bool page_same_filled(void *ptr, unsigned long *element)
{
 unsigned int pos;
 unsigned long *page;
 unsigned long val;

 page = (unsigned long *)ptr;
 val = page[0];

 for (pos = 1; pos < PAGE_SIZE / sizeof(*page); pos++) {
  if (val != page[pos])
   return 0;
 }

 *element = val;

 return 1;
}
