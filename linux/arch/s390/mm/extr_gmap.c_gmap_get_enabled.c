
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gmap {int dummy; } ;
struct TYPE_2__ {scalar_t__ gmap; } ;


 TYPE_1__ S390_lowcore ;

struct gmap *gmap_get_enabled(void)
{
 return (struct gmap *) S390_lowcore.gmap;
}
