
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uli_priv {unsigned int* scr_cfg_addr; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct uli_priv* private_data; } ;



__attribute__((used)) static unsigned int get_scr_cfg_addr(struct ata_port *ap, unsigned int sc_reg)
{
 struct uli_priv *hpriv = ap->host->private_data;
 return hpriv->scr_cfg_addr[ap->port_no] + (4 * sc_reg);
}
