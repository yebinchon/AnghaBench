
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_3__ {scalar_t__ scr_addr; } ;
struct TYPE_4__ {TYPE_1__ ioaddr; } ;


 int EINVAL ;
 unsigned int SCR_ACTIVE ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int sata_rcar_scr_write(struct ata_link *link, unsigned int sc_reg,
          u32 val)
{
 if (sc_reg > SCR_ACTIVE)
  return -EINVAL;

 iowrite32(val, link->ap->ioaddr.scr_addr + (sc_reg << 2));
 return 0;
}
