
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct blk_zone {int dummy; } ;
typedef int sector_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int null_zone_report(struct gendisk *disk, sector_t sector,
       struct blk_zone *zones,
       unsigned int *nr_zones)
{
 return -EOPNOTSUPP;
}
