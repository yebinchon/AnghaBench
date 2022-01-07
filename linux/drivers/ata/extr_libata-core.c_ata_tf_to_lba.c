
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ata_taskfile {int device; int lbah; int lbam; int lbal; } ;



u64 ata_tf_to_lba(const struct ata_taskfile *tf)
{
 u64 sectors = 0;

 sectors |= (tf->device & 0x0f) << 24;
 sectors |= (tf->lbah & 0xff) << 16;
 sectors |= (tf->lbam & 0xff) << 8;
 sectors |= (tf->lbal & 0xff);

 return sectors;
}
