
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* areasettings; } ;
struct TYPE_3__ {int areaflags; } ;


 int AREA_LIQUID ;
 TYPE_2__ aasworld ;
 int qfalse ;
 int qtrue ;

int AAS_AreaSwim(int areanum)
{
 if (aasworld.areasettings[areanum].areaflags & AREA_LIQUID) return qtrue;
 else return qfalse;
}
