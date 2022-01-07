
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int refcount; } ;


 int ENODEV ;
 scalar_t__ erst_disable ;
 TYPE_1__ erst_record_id_cache ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int erst_get_record_id_begin(int *pos)
{
 int rc;

 if (erst_disable)
  return -ENODEV;

 rc = mutex_lock_interruptible(&erst_record_id_cache.lock);
 if (rc)
  return rc;
 erst_record_id_cache.refcount++;
 mutex_unlock(&erst_record_id_cache.lock);

 *pos = 0;

 return 0;
}
