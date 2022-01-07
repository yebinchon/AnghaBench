
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sata_rcar_priv {scalar_t__ base; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; TYPE_1__* host; } ;
struct TYPE_3__ {struct sata_rcar_priv* private_data; } ;


 int DPRINTK (char*,int) ;
 scalar_t__ SCRSERR_REG ;
 int SERR_COMM_WAKE ;
 int SERR_DEV_XCHG ;
 int SERR_PHYRDY_CHG ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_hotplugged (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,char*) ;
 int ata_port_abort (struct ata_port*) ;
 int ata_port_freeze (struct ata_port*) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static void sata_rcar_serr_interrupt(struct ata_port *ap)
{
 struct sata_rcar_priv *priv = ap->host->private_data;
 struct ata_eh_info *ehi = &ap->link.eh_info;
 int freeze = 0;
 u32 serror;

 serror = ioread32(priv->base + SCRSERR_REG);
 if (!serror)
  return;

 DPRINTK("SError @host_intr: 0x%x\n", serror);


 ata_ehi_clear_desc(ehi);

 if (serror & (SERR_DEV_XCHG | SERR_PHYRDY_CHG)) {

  ata_ehi_hotplugged(ehi);
  ata_ehi_push_desc(ehi, "%s", "hotplug");

  freeze = serror & SERR_COMM_WAKE ? 0 : 1;
 }


 if (freeze)
  ata_port_freeze(ap);
 else
  ata_port_abort(ap);
}
