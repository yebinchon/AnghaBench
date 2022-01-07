
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct ahci_host_priv {int cap; } ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 unsigned int ARRAY_SIZE (int const*) ;
 int HOST_CAP_SNTF ;
__attribute__((used)) static unsigned ahci_scr_offset(struct ata_port *ap, unsigned int sc_reg)
{
 static const int offset[] = {
  [128] = 133,
  [131] = 136,
  [130] = 135,
  [132] = 137,
  [129] = 134,
 };
 struct ahci_host_priv *hpriv = ap->host->private_data;

 if (sc_reg < ARRAY_SIZE(offset) &&
     (sc_reg != 129 || (hpriv->cap & HOST_CAP_SNTF)))
  return offset[sc_reg];
 return 0;
}
