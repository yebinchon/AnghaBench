
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {void* lowest_lba; void* align; } ;
struct d0_geometry_features {int lowest_aligned_lba; int alignment_granularity; } ;


 void* be64_to_cpu (int ) ;

__attribute__((used)) static void check_geometry(struct opal_dev *dev, const void *data)
{
 const struct d0_geometry_features *geo = data;

 dev->align = be64_to_cpu(geo->alignment_granularity);
 dev->lowest_lba = be64_to_cpu(geo->lowest_aligned_lba);
}
