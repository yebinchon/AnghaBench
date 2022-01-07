
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int zone_size_sects; } ;
typedef unsigned int sector_t ;


 unsigned int ilog2 (int ) ;

__attribute__((used)) static inline unsigned int null_zone_no(struct nullb_device *dev, sector_t sect)
{
 return sect >> ilog2(dev->zone_size_sects);
}
