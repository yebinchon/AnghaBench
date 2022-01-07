
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct ata_link {int eh_context; struct ata_port* ap; } ;
struct ahci_host_priv {int (* start_engine ) (struct ata_port*) ;int (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int DPRINTK (char*,...) ;
 int EAGAIN ;
 int sata_ehc_deb_timing (int *) ;
 int sata_link_hardreset (struct ata_link*,int ,unsigned long,int*,int *) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

__attribute__((used)) static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
     unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ahci_host_priv *hpriv = ap->host->private_data;
 bool online;
 int rc;

 DPRINTK("ENTER\n");

 hpriv->stop_engine(ap);

 rc = sata_link_hardreset(link, sata_ehc_deb_timing(&link->eh_context),
     deadline, &online, ((void*)0));

 hpriv->start_engine(ap);

 DPRINTK("EXIT, rc=%d, class=%u\n", rc, *class);




 return online ? -EAGAIN : rc;
}
