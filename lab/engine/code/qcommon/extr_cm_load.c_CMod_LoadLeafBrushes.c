
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_5__ {int* leafbrushes; int numLeafBrushes; } ;


 int BOX_BRUSHES ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int* Hunk_Alloc (int,int ) ;
 int LittleLong (int) ;
 TYPE_2__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadLeafBrushes (lump_t *l)
{
 int i;
 int *out;
 int *in;
 int count;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 count = l->filelen / sizeof(*in);

 cm.leafbrushes = Hunk_Alloc( (count + BOX_BRUSHES) * sizeof( *cm.leafbrushes ), h_high );
 cm.numLeafBrushes = count;

 out = cm.leafbrushes;

 for ( i=0 ; i<count ; i++, in++, out++) {
  *out = LittleLong (*in);
 }
}
