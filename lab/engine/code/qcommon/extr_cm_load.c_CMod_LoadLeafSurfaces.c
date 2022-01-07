
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_5__ {int* leafsurfaces; int numLeafSurfaces; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int* Hunk_Alloc (int,int ) ;
 int LittleLong (int) ;
 TYPE_2__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadLeafSurfaces( lump_t *l )
{
 int i;
 int *out;
 int *in;
 int count;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 count = l->filelen / sizeof(*in);

 cm.leafsurfaces = Hunk_Alloc( count * sizeof( *cm.leafsurfaces ), h_high );
 cm.numLeafSurfaces = count;

 out = cm.leafsurfaces;

 for ( i=0 ; i<count ; i++, in++, out++) {
  *out = LittleLong (*in);
 }
}
