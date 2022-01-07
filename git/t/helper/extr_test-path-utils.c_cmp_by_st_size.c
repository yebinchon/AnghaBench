
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;



__attribute__((used)) static int cmp_by_st_size(const void *a, const void *b)
{
 intptr_t x = (intptr_t)((struct string_list_item *)a)->util;
 intptr_t y = (intptr_t)((struct string_list_item *)b)->util;

 return x > y ? -1 : (x < y ? +1 : 0);
}
