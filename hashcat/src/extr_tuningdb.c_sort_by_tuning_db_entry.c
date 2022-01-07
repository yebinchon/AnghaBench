
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attack_mode; int hash_mode; int device_name; } ;
typedef TYPE_1__ tuning_db_entry_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int sort_by_tuning_db_entry (const void *v1, const void *v2)
{
  const tuning_db_entry_t *t1 = (const tuning_db_entry_t *) v1;
  const tuning_db_entry_t *t2 = (const tuning_db_entry_t *) v2;

  const int res1 = strcmp (t1->device_name, t2->device_name);

  if (res1 != 0) return (res1);

  const int res2 = t1->attack_mode
                 - t2->attack_mode;

  if (res2 != 0) return (res2);

  const int res3 = t1->hash_mode
                 - t2->hash_mode;

  if (res3 != 0) return (res3);

  return 0;
}
