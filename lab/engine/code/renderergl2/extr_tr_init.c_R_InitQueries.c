
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int occlusionQuery; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int sunFlareQuery; } ;


 int ARRAY_LEN (int ) ;
 TYPE_3__ glRefConfig ;
 int qglGenQueries (int ,int ) ;
 TYPE_2__* r_drawSunRays ;
 TYPE_1__ tr ;

void R_InitQueries(void)
{
 if (!glRefConfig.occlusionQuery)
  return;

 if (r_drawSunRays->integer)
  qglGenQueries(ARRAY_LEN(tr.sunFlareQuery), tr.sunFlareQuery);
}
