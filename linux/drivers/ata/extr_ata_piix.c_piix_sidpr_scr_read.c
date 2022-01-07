
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct piix_host_priv {scalar_t__ sidpr; } ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct piix_host_priv* private_data; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ PIIX_SIDPR_DATA ;
 int ioread32 (scalar_t__) ;
 int piix_sidpr_sel (struct ata_link*,unsigned int) ;
 int piix_sidx_map ;

__attribute__((used)) static int piix_sidpr_scr_read(struct ata_link *link,
          unsigned int reg, u32 *val)
{
 struct piix_host_priv *hpriv = link->ap->host->private_data;

 if (reg >= ARRAY_SIZE(piix_sidx_map))
  return -EINVAL;

 piix_sidpr_sel(link, reg);
 *val = ioread32(hpriv->sidpr + PIIX_SIDPR_DATA);
 return 0;
}
