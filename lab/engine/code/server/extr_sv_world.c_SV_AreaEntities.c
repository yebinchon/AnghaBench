
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int* list; int count; int maxcount; int maxs; int mins; } ;
typedef TYPE_1__ areaParms_t ;


 int SV_AreaEntities_r (int ,TYPE_1__*) ;
 int sv_worldSectors ;

int SV_AreaEntities( const vec3_t mins, const vec3_t maxs, int *entityList, int maxcount ) {
 areaParms_t ap;

 ap.mins = mins;
 ap.maxs = maxs;
 ap.list = entityList;
 ap.count = 0;
 ap.maxcount = maxcount;

 SV_AreaEntities_r( sv_worldSectors, &ap );

 return ap.count;
}
