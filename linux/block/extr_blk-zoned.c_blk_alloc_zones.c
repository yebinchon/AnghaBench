
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_zone {int dummy; } ;


 int BLK_ZONED_REPORT_MAX_ZONES ;
 int GFP_KERNEL ;
 struct blk_zone* kvcalloc (size_t,int,int ) ;
 size_t min (unsigned int,int ) ;

__attribute__((used)) static struct blk_zone *blk_alloc_zones(unsigned int *nr_zones)
{
 struct blk_zone *zones;
 size_t nrz = min(*nr_zones, BLK_ZONED_REPORT_MAX_ZONES);






 zones = kvcalloc(nrz, sizeof(struct blk_zone), GFP_KERNEL);
 if (!zones) {
  *nr_zones = 0;
  return ((void*)0);
 }

 *nr_zones = nrz;

 return zones;
}
