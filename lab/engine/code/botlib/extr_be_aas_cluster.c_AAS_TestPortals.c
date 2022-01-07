
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t areanum; int backcluster; int frontcluster; } ;
typedef TYPE_2__ aas_portal_t ;
struct TYPE_6__ {int numportals; TYPE_1__* areasettings; TYPE_2__* portals; } ;
struct TYPE_4__ {int contents; } ;


 int AREACONTENTS_CLUSTERPORTAL ;
 int Log_Write (char*,size_t) ;
 TYPE_3__ aasworld ;
 int qfalse ;
 int qtrue ;

int AAS_TestPortals(void)
{
 int i;
 aas_portal_t *portal;

 for (i = 1; i < aasworld.numportals; i++)
 {
  portal = &aasworld.portals[i];
  if (!portal->frontcluster)
  {
   aasworld.areasettings[portal->areanum].contents &= ~AREACONTENTS_CLUSTERPORTAL;
   Log_Write("portal area %d has no front cluster\r\n", portal->areanum);
   return qfalse;
  }
  if (!portal->backcluster)
  {
   aasworld.areasettings[portal->areanum].contents &= ~AREACONTENTS_CLUSTERPORTAL;
   Log_Write("portal area %d has no back cluster\r\n", portal->areanum);
   return qfalse;
  }
 }
 return qtrue;
}
