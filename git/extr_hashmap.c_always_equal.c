
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int dummy; } ;



__attribute__((used)) static int always_equal(const void *unused_cmp_data,
   const struct hashmap_entry *unused1,
   const struct hashmap_entry *unused2,
   const void *unused_keydata)
{
 return 0;
}
