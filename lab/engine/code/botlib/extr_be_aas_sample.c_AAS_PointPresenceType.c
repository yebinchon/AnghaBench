
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {TYPE_1__* areasettings; int loaded; } ;
struct TYPE_3__ {int presencetype; } ;


 int AAS_PointAreaNum (int ) ;
 int PRESENCE_NONE ;
 TYPE_2__ aasworld ;

int AAS_PointPresenceType(vec3_t point)
{
 int areanum;

 if (!aasworld.loaded) return 0;

 areanum = AAS_PointAreaNum(point);
 if (!areanum) return PRESENCE_NONE;
 return aasworld.areasettings[areanum].presencetype;
}
