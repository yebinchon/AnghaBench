
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* current_size; } ;
struct TYPE_5__ {int gart_size; } ;
struct TYPE_4__ {int size; } ;


 int MB (int) ;
 TYPE_3__* agp_bridge ;
 TYPE_2__ parisc_agp_info ;
 TYPE_1__* parisc_agp_sizes ;

__attribute__((used)) static int
parisc_agp_fetch_size(void)
{
 int size;

 size = parisc_agp_info.gart_size / MB(1);
 parisc_agp_sizes[0].size = size;
 agp_bridge->current_size = (void *) &parisc_agp_sizes[0];

 return size;
}
