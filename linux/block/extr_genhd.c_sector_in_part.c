
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {scalar_t__ start_sect; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ part_nr_sects_read (struct hd_struct*) ;

__attribute__((used)) static inline int sector_in_part(struct hd_struct *part, sector_t sector)
{
 return part->start_sect <= sector &&
  sector < part->start_sect + part_nr_sects_read(part);
}
