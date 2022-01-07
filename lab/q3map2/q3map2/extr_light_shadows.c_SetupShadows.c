
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* si; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_9__ {int contents; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_10__ {scalar_t__ cluster; struct TYPE_10__* next; } ;
typedef TYPE_3__ light_t ;
typedef int dsurface_t ;
struct TYPE_11__ {int numLeafSurfaces; int firstLeafSurface; int cluster; } ;
typedef TYPE_4__ dleaf_t ;
typedef int byte ;


 int CONTENTS_TRANSLUCENT ;
 scalar_t__ ClusterVisible (scalar_t__,int ) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 TYPE_4__* dleafs ;
 int* dleafsurfaces ;
 int * drawSurfaces ;
 TYPE_3__* lights ;
 int memset (int*,int ,int) ;
 int numDrawSurfaces ;
 int numleafs ;
 scalar_t__ qfalse ;
 int* safe_malloc (int) ;
 TYPE_1__* surfaceInfos ;

void SetupShadows( void ){
 int i, j, s;
 light_t *light;
 dleaf_t *leaf;
 dsurface_t *ds;
 surfaceInfo_t *info;
 shaderInfo_t *si;
 byte *tested;



 if ( lights == ((void*)0) ) {
  return;
 }


 Sys_FPrintf( SYS_VRB, "--- SetupShadows ---\n" );


 tested = safe_malloc( numDrawSurfaces / 8 + 1 );


 for ( light = lights; light != ((void*)0); light = light->next )
 {

  if ( light->cluster < 0 ) {
   continue;
  }


  memset( tested, 0, numDrawSurfaces / 8 + 1 );


  for ( i = 0, leaf = dleafs; i < numleafs; i++, leaf++ )
  {

   if ( ClusterVisible( light->cluster, leaf->cluster ) == qfalse ) {
    continue;
   }


   for ( j = 0; j < leaf->numLeafSurfaces; j++ )
   {

    s = dleafsurfaces[ leaf->firstLeafSurface + j ];
    if ( tested[ s >> 3 ] & ( 1 << ( s & 7 ) ) ) {
     continue;
    }
    tested[ s >> 3 ] |= ( 1 << ( s & 7 ) );


    ds = &drawSurfaces[ s ];
    info = &surfaceInfos[ s ];
    si = info->si;


    if ( si->contents & CONTENTS_TRANSLUCENT ) {
     continue;
    }
   }
  }
 }
}
