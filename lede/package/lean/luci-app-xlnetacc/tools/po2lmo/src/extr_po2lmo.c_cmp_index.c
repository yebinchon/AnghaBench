
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ key_id; } ;
typedef TYPE_1__ lmo_entry_t ;



__attribute__((used)) static int cmp_index(const void *a, const void *b)
{
 uint32_t x = ((const lmo_entry_t *)a)->key_id;
 uint32_t y = ((const lmo_entry_t *)b)->key_id;

 if (x < y)
  return -1;
 else if (x > y)
  return 1;

 return 0;
}
