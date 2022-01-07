
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ering_entry {int eflags; } ;


 int ATA_EFLAG_OLD_ER ;

__attribute__((used)) static int ata_ering_clear_cb(struct ata_ering_entry *ent, void *void_arg)
{
 ent->eflags |= ATA_EFLAG_OLD_ER;
 return 0;
}
