
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {int dummy; } ;
struct TYPE_2__ {unsigned long gmap; } ;


 TYPE_1__ S390_lowcore ;

void gmap_enable(struct gmap *gmap)
{
 S390_lowcore.gmap = (unsigned long) gmap;
}
