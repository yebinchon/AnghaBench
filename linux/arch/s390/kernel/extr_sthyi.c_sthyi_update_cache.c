
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ end; int info; } ;


 scalar_t__ CACHE_VALID_JIFFIES ;
 int PAGE_SIZE ;
 int fill_dst (int ,int *) ;
 scalar_t__ jiffies ;
 int memset (int ,int ,int ) ;
 TYPE_1__ sthyi_cache ;

__attribute__((used)) static int sthyi_update_cache(u64 *rc)
{
 int r;

 memset(sthyi_cache.info, 0, PAGE_SIZE);
 r = fill_dst(sthyi_cache.info, rc);
 if (r)
  return r;
 sthyi_cache.end = jiffies + CACHE_VALID_JIFFIES;
 return r;
}
