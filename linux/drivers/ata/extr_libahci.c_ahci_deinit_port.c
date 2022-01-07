
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct ahci_host_priv {int (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int ahci_stop_fis_rx (struct ata_port*) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static int ahci_deinit_port(struct ata_port *ap, const char **emsg)
{
 int rc;
 struct ahci_host_priv *hpriv = ap->host->private_data;


 rc = hpriv->stop_engine(ap);
 if (rc) {
  *emsg = "failed to stop engine";
  return rc;
 }


 rc = ahci_stop_fis_rx(ap);
 if (rc) {
  *emsg = "failed stop FIS RX";
  return rc;
 }

 return 0;
}
