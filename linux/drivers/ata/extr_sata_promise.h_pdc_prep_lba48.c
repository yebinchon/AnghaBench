
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int hob_feature; int feature; int hob_nsect; int nsect; int hob_lbal; int lbal; int hob_lbam; int lbam; int hob_lbah; int lbah; } ;


 int ATA_REG_FEATURE ;
 int ATA_REG_LBAH ;
 int ATA_REG_LBAL ;
 int ATA_REG_LBAM ;
 int ATA_REG_NSECT ;

__attribute__((used)) static inline unsigned int pdc_prep_lba48(struct ata_taskfile *tf, u8 *buf, unsigned int i)
{



 buf[i++] = (2 << 5) | ATA_REG_FEATURE;
 buf[i++] = tf->hob_feature;
 buf[i++] = tf->feature;

 buf[i++] = (2 << 5) | ATA_REG_NSECT;
 buf[i++] = tf->hob_nsect;
 buf[i++] = tf->nsect;

 buf[i++] = (2 << 5) | ATA_REG_LBAL;
 buf[i++] = tf->hob_lbal;
 buf[i++] = tf->lbal;

 buf[i++] = (2 << 5) | ATA_REG_LBAM;
 buf[i++] = tf->hob_lbam;
 buf[i++] = tf->lbam;

 buf[i++] = (2 << 5) | ATA_REG_LBAH;
 buf[i++] = tf->hob_lbah;
 buf[i++] = tf->lbah;

 return i;
}
