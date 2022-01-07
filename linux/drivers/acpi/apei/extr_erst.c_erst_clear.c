
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int len; int lock; scalar_t__* entries; } ;


 scalar_t__ APEI_ERST_INVALID_RECORD_ID ;
 int ENODEV ;
 int ERST_RANGE_NVRAM ;
 int __erst_clear_from_nvram (scalar_t__) ;
 int __erst_clear_from_storage (scalar_t__) ;
 int __erst_record_id_cache_compact () ;
 scalar_t__ erst_disable ;
 TYPE_2__ erst_erange ;
 int erst_lock ;
 TYPE_1__ erst_record_id_cache ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int erst_clear(u64 record_id)
{
 int rc, i;
 unsigned long flags;
 u64 *entries;

 if (erst_disable)
  return -ENODEV;

 rc = mutex_lock_interruptible(&erst_record_id_cache.lock);
 if (rc)
  return rc;
 raw_spin_lock_irqsave(&erst_lock, flags);
 if (erst_erange.attr & ERST_RANGE_NVRAM)
  rc = __erst_clear_from_nvram(record_id);
 else
  rc = __erst_clear_from_storage(record_id);
 raw_spin_unlock_irqrestore(&erst_lock, flags);
 if (rc)
  goto out;
 entries = erst_record_id_cache.entries;
 for (i = 0; i < erst_record_id_cache.len; i++) {
  if (entries[i] == record_id)
   entries[i] = APEI_ERST_INVALID_RECORD_ID;
 }
 __erst_record_id_cache_compact();
out:
 mutex_unlock(&erst_record_id_cache.lock);
 return rc;
}
