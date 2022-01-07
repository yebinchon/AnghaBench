
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int flags; int device; int command; } ;


 int ATA_REG_CMD ;
 int ATA_REG_DEVICE ;
 int ATA_TFLAG_DEVICE ;
 int PDC_LAST_REG ;

__attribute__((used)) static inline unsigned int pdc_pkt_footer(struct ata_taskfile *tf, u8 *buf,
      unsigned int i)
{
 if (tf->flags & ATA_TFLAG_DEVICE) {
  buf[i++] = (1 << 5) | ATA_REG_DEVICE;
  buf[i++] = tf->device;
 }


 buf[i++] = (1 << 5) | PDC_LAST_REG | ATA_REG_CMD;
 buf[i++] = tf->command;

 return i;
}
