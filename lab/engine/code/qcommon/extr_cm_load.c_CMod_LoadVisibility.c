
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filelen; int fileofs; } ;
typedef TYPE_1__ lump_t ;
typedef int byte ;
struct TYPE_5__ {int clusterBytes; int numClusters; void* visibility; int vised; } ;


 int Com_Memcpy (void*,int *,int) ;
 int Com_Memset (void*,int,int) ;
 void* Hunk_Alloc (int,int ) ;
 void* LittleLong (int) ;
 int VIS_HEADER ;
 TYPE_2__ cm ;
 int * cmod_base ;
 int h_high ;
 int qtrue ;

void CMod_LoadVisibility( lump_t *l ) {
 int len;
 byte *buf;

    len = l->filelen;
 if ( !len ) {
  cm.clusterBytes = ( cm.numClusters + 31 ) & ~31;
  cm.visibility = Hunk_Alloc( cm.clusterBytes, h_high );
  Com_Memset( cm.visibility, 255, cm.clusterBytes );
  return;
 }
 buf = cmod_base + l->fileofs;

 cm.vised = qtrue;
 cm.visibility = Hunk_Alloc( len, h_high );
 cm.numClusters = LittleLong( ((int *)buf)[0] );
 cm.clusterBytes = LittleLong( ((int *)buf)[1] );
 Com_Memcpy (cm.visibility, buf + VIS_HEADER, len - VIS_HEADER );
}
