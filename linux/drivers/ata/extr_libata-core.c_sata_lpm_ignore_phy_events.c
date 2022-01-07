
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {unsigned long last_lpm_change; scalar_t__ lpm_policy; int flags; } ;


 int ATA_LFLAG_CHANGED ;
 scalar_t__ ATA_LPM_MAX_POWER ;
 int ATA_TMOUT_SPURIOUS_PHY ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (int ,unsigned long) ;

bool sata_lpm_ignore_phy_events(struct ata_link *link)
{
 unsigned long lpm_timeout = link->last_lpm_change +
        msecs_to_jiffies(ATA_TMOUT_SPURIOUS_PHY);


 if (link->lpm_policy > ATA_LPM_MAX_POWER)
  return 1;




 if ((link->flags & ATA_LFLAG_CHANGED) &&
     time_before(jiffies, lpm_timeout))
  return 1;

 return 0;
}
