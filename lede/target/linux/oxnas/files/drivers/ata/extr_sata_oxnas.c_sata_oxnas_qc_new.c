
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sata_oxnas_host_priv {scalar_t__ port_in_eh; scalar_t__ port_frozen; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; } ;


 int DPRINTK (char*,int ) ;
 int sata_oxnas_acquire_hw (struct ata_port*,int ,int ) ;
 int smp_rmb () ;

__attribute__((used)) static int sata_oxnas_qc_new(struct ata_port *ap)
{
 struct sata_oxnas_host_priv *hd = ap->host->private_data;

 DPRINTK("port %d\n", ap->port_no);
 smp_rmb();
 if (hd->port_frozen || hd->port_in_eh)
  return 1;
 else
  return !sata_oxnas_acquire_hw(ap, 0, 0);
}
