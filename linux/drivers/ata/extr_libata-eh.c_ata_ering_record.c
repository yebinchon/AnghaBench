
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ering_entry {unsigned int eflags; unsigned int err_mask; int timestamp; } ;
struct ata_ering {size_t cursor; struct ata_ering_entry* ring; } ;


 size_t ATA_ERING_SIZE ;
 int WARN_ON (int) ;
 int get_jiffies_64 () ;

__attribute__((used)) static void ata_ering_record(struct ata_ering *ering, unsigned int eflags,
        unsigned int err_mask)
{
 struct ata_ering_entry *ent;

 WARN_ON(!err_mask);

 ering->cursor++;
 ering->cursor %= ATA_ERING_SIZE;

 ent = &ering->ring[ering->cursor];
 ent->eflags = eflags;
 ent->err_mask = err_mask;
 ent->timestamp = get_jiffies_64();
}
