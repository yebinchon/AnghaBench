
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ata_ering_entry {int eflags; scalar_t__ timestamp; } ;


 int ATA_EFLAG_OLD_ER ;
 int ATA_EH_PROBE_TRIAL_INTERVAL ;
 scalar_t__ get_jiffies_64 () ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static int ata_count_probe_trials_cb(struct ata_ering_entry *ent, void *void_arg)
{
 u64 interval = msecs_to_jiffies(ATA_EH_PROBE_TRIAL_INTERVAL);
 u64 now = get_jiffies_64();
 int *trials = void_arg;

 if ((ent->eflags & ATA_EFLAG_OLD_ER) ||
     (ent->timestamp < now - min(now, interval)))
  return -1;

 (*trials)++;
 return 0;
}
