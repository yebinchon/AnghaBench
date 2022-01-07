
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct pktcdvd_device {int offset; TYPE_1__ settings; } ;
typedef int sector_t ;



__attribute__((used)) static sector_t get_zone(sector_t sector, struct pktcdvd_device *pd)
{
 return (sector + pd->offset) & ~(sector_t)(pd->settings.size - 1);
}
