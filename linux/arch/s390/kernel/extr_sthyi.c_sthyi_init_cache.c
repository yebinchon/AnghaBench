
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; void* info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ get_zeroed_page (int ) ;
 scalar_t__ jiffies ;
 TYPE_1__ sthyi_cache ;

__attribute__((used)) static int sthyi_init_cache(void)
{
 if (sthyi_cache.info)
  return 0;
 sthyi_cache.info = (void *)get_zeroed_page(GFP_KERNEL);
 if (!sthyi_cache.info)
  return -ENOMEM;
 sthyi_cache.end = jiffies - 1;
 return 0;
}
