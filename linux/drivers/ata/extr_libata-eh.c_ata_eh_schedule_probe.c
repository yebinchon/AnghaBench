
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ata_link {scalar_t__ lpm_policy; TYPE_4__* ap; } ;
struct TYPE_6__ {int probe_mask; int action; } ;
struct ata_eh_context {int did_probe_mask; int saved_ncq_enabled; scalar_t__* saved_xfer_mode; TYPE_2__ i; } ;
struct ata_device {int devno; int ering; TYPE_1__* link; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* set_lpm ) (struct ata_link*,scalar_t__,int ) ;} ;
struct TYPE_5__ {struct ata_eh_context eh_context; } ;


 int AC_ERR_OTHER ;
 int ATA_EH_PROBE_TRIALS ;
 int ATA_EH_RESET ;
 int ATA_LPM_EMPTY ;
 scalar_t__ ATA_LPM_MAX_POWER ;
 int ata_count_probe_trials_cb ;
 int ata_dev_init (struct ata_device*) ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int ata_eh_detach_dev (struct ata_device*) ;
 int ata_ering_map (int *,int ,int*) ;
 int ata_ering_record (int *,int ,int ) ;
 scalar_t__ ata_is_host_link (struct ata_link*) ;
 int sata_down_spd_limit (struct ata_link*,int) ;
 int sata_pmp_set_lpm (struct ata_link*,scalar_t__,int ) ;
 int stub1 (struct ata_link*,scalar_t__,int ) ;

__attribute__((used)) static int ata_eh_schedule_probe(struct ata_device *dev)
{
 struct ata_eh_context *ehc = &dev->link->eh_context;
 struct ata_link *link = ata_dev_phys_link(dev);
 int trials = 0;

 if (!(ehc->i.probe_mask & (1 << dev->devno)) ||
     (ehc->did_probe_mask & (1 << dev->devno)))
  return 0;

 ata_eh_detach_dev(dev);
 ata_dev_init(dev);
 ehc->did_probe_mask |= (1 << dev->devno);
 ehc->i.action |= ATA_EH_RESET;
 ehc->saved_xfer_mode[dev->devno] = 0;
 ehc->saved_ncq_enabled &= ~(1 << dev->devno);


 if (link->lpm_policy > ATA_LPM_MAX_POWER) {
  if (ata_is_host_link(link))
   link->ap->ops->set_lpm(link, ATA_LPM_MAX_POWER,
            ATA_LPM_EMPTY);
  else
   sata_pmp_set_lpm(link, ATA_LPM_MAX_POWER,
      ATA_LPM_EMPTY);
 }
 ata_ering_record(&dev->ering, 0, AC_ERR_OTHER);
 ata_ering_map(&dev->ering, ata_count_probe_trials_cb, &trials);

 if (trials > ATA_EH_PROBE_TRIALS)
  sata_down_spd_limit(link, 1);

 return 1;
}
