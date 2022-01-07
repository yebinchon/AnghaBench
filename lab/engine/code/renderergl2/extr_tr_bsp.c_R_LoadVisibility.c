
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int filelen; int fileofs; } ;
typedef TYPE_1__ lump_t ;
typedef int byte ;
struct TYPE_9__ {int * (* Hunk_Alloc ) (int,int ) ;} ;
struct TYPE_8__ {int * vis; void* clusterBytes; void* numClusters; } ;
struct TYPE_7__ {int * externalVisData; } ;


 int Com_Memcpy (int *,int *,int) ;
 void* LittleLong (int) ;
 int * fileBase ;
 int h_low ;
 TYPE_4__ ri ;
 TYPE_3__ s_worldData ;
 int * stub1 (int,int ) ;
 TYPE_2__ tr ;

__attribute__((used)) static void R_LoadVisibility( lump_t *l ) {
 int len;
 byte *buf;

 len = l->filelen;
 if ( !len ) {
  return;
 }
 buf = fileBase + l->fileofs;

 s_worldData.numClusters = LittleLong( ((int *)buf)[0] );
 s_worldData.clusterBytes = LittleLong( ((int *)buf)[1] );



 if ( tr.externalVisData ) {
  s_worldData.vis = tr.externalVisData;
 } else {
  byte *dest;

  dest = ri.Hunk_Alloc( len - 8, h_low );
  Com_Memcpy( dest, buf + 8, len - 8 );
  s_worldData.vis = dest;
 }
}
