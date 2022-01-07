
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svEntity_t ;
typedef int sharedEntity_t ;
struct TYPE_2__ {int * svEntities; } ;


 int * SV_GentityNum (int) ;
 TYPE_1__ sv ;

sharedEntity_t *SV_GEntityForSvEntity( svEntity_t *svEnt ) {
 int num;

 num = svEnt - sv.svEntities;
 return SV_GentityNum( num );
}
