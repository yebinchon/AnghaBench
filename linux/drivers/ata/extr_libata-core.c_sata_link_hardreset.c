
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int ap; } ;


 int ATA_TMOUT_PMP_SRST_WAIT ;
 int DPRINTK (char*,...) ;
 int EAGAIN ;
 int SCR_CONTROL ;
 unsigned long ata_deadline (int ,int ) ;
 scalar_t__ ata_is_host_link (struct ata_link*) ;
 int ata_link_err (struct ata_link*,char*,int) ;
 int ata_msleep (int ,int) ;
 scalar_t__ ata_phys_link_offline (struct ata_link*) ;
 int ata_wait_ready (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ;
 int jiffies ;
 int sata_link_resume (struct ata_link*,unsigned long const*,unsigned long) ;
 scalar_t__ sata_pmp_supported (int ) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_scr_write (struct ata_link*,int ,int) ;
 int sata_scr_write_flush (struct ata_link*,int ,int) ;
 int sata_set_spd (struct ata_link*) ;
 scalar_t__ sata_set_spd_needed (struct ata_link*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int sata_link_hardreset(struct ata_link *link, const unsigned long *timing,
   unsigned long deadline,
   bool *online, int (*check_ready)(struct ata_link *))
{
 u32 scontrol;
 int rc;

 DPRINTK("ENTER\n");

 if (online)
  *online = 0;

 if (sata_set_spd_needed(link)) {





  if ((rc = sata_scr_read(link, SCR_CONTROL, &scontrol)))
   goto out;

  scontrol = (scontrol & 0x0f0) | 0x304;

  if ((rc = sata_scr_write(link, SCR_CONTROL, scontrol)))
   goto out;

  sata_set_spd(link);
 }


 if ((rc = sata_scr_read(link, SCR_CONTROL, &scontrol)))
  goto out;

 scontrol = (scontrol & 0x0f0) | 0x301;

 if ((rc = sata_scr_write_flush(link, SCR_CONTROL, scontrol)))
  goto out;




 ata_msleep(link->ap, 1);


 rc = sata_link_resume(link, timing, deadline);
 if (rc)
  goto out;

 if (ata_phys_link_offline(link))
  goto out;


 if (online)
  *online = 1;

 if (sata_pmp_supported(link->ap) && ata_is_host_link(link)) {





  if (check_ready) {
   unsigned long pmp_deadline;

   pmp_deadline = ata_deadline(jiffies,
          ATA_TMOUT_PMP_SRST_WAIT);
   if (time_after(pmp_deadline, deadline))
    pmp_deadline = deadline;
   ata_wait_ready(link, pmp_deadline, check_ready);
  }
  rc = -EAGAIN;
  goto out;
 }

 rc = 0;
 if (check_ready)
  rc = ata_wait_ready(link, deadline, check_ready);
 out:
 if (rc && rc != -EAGAIN) {

  if (online)
   *online = 0;
  ata_link_err(link, "COMRESET failed (errno=%d)\n", rc);
 }
 DPRINTK("EXIT, rc=%d\n", rc);
 return rc;
}
