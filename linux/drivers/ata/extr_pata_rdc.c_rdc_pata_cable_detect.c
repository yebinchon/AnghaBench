
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdc_host_priv {int saved_iocfg; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct rdc_host_priv* private_data; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;

__attribute__((used)) static int rdc_pata_cable_detect(struct ata_port *ap)
{
 struct rdc_host_priv *hpriv = ap->host->private_data;
 u8 mask;


 mask = 0x30 << (2 * ap->port_no);
 if ((hpriv->saved_iocfg & mask) == 0)
  return ATA_CBL_PATA40;
 return ATA_CBL_PATA80;
}
