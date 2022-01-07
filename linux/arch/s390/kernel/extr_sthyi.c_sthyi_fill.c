
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int info; int end; } ;


 int PAGE_SIZE ;
 int memcpy (void*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ sthyi_cache ;
 int sthyi_init_cache () ;
 int sthyi_mutex ;
 int sthyi_update_cache (scalar_t__*) ;
 scalar_t__ time_is_before_jiffies (int ) ;

int sthyi_fill(void *dst, u64 *rc)
{
 int r;

 mutex_lock(&sthyi_mutex);
 r = sthyi_init_cache();
 if (r)
  goto out;

 if (time_is_before_jiffies(sthyi_cache.end)) {

  r = sthyi_update_cache(rc);
  if (r)
   goto out;
 }
 *rc = 0;
 memcpy(dst, sthyi_cache.info, PAGE_SIZE);
out:
 mutex_unlock(&sthyi_mutex);
 return r;
}
