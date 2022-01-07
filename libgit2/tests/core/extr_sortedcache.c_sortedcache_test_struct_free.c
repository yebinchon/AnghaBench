
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ smaller_value; } ;
typedef TYPE_1__ sortedcache_test_struct ;



__attribute__((used)) static void sortedcache_test_struct_free(void *payload, void *item_)
{
 sortedcache_test_struct *item = item_;
 int *count = payload;
 (*count)++;
 item->smaller_value = 0;
}
