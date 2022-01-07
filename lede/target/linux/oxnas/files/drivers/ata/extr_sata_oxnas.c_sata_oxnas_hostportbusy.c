
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sata_oxnas_host_priv {int n_ports; scalar_t__ port_base; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; } ;


 int CMD_CORE_BUSY ;
 scalar_t__ PORT_SIZE ;
 scalar_t__ SATA_COMMAND ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 sata_oxnas_hostportbusy(struct ata_port *ap)
{
 struct sata_oxnas_host_priv *hd = ap->host->private_data;

 return (ioread32(hd->port_base + SATA_COMMAND) & CMD_CORE_BUSY) ||
        (hd->n_ports > 1 &&
  (ioread32(hd->port_base + PORT_SIZE + SATA_COMMAND) &
   CMD_CORE_BUSY));
}
