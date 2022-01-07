
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int len; scalar_t__* entries; scalar_t__ refcount; } ;


 scalar_t__ APEI_ERST_INVALID_RECORD_ID ;
 TYPE_1__ erst_record_id_cache ;

__attribute__((used)) static void __erst_record_id_cache_compact(void)
{
 int i, wpos = 0;
 u64 *entries;

 if (erst_record_id_cache.refcount)
  return;

 entries = erst_record_id_cache.entries;
 for (i = 0; i < erst_record_id_cache.len; i++) {
  if (entries[i] == APEI_ERST_INVALID_RECORD_ID)
   continue;
  if (wpos != i)
   entries[wpos] = entries[i];
  wpos++;
 }
 erst_record_id_cache.len = wpos;
}
