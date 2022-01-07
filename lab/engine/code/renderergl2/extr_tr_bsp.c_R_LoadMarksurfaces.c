
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_7__ {int* (* Hunk_Alloc ) (int,int ) ;int (* Error ) (int ,char*,int ) ;} ;
struct TYPE_6__ {int* marksurfaces; int nummarksurfaces; int name; } ;


 int ERR_DROP ;
 int LittleLong (int) ;
 scalar_t__ fileBase ;
 int h_low ;
 TYPE_3__ ri ;
 TYPE_2__ s_worldData ;
 int stub1 (int ,char*,int ) ;
 int* stub2 (int,int ) ;

__attribute__((used)) static void R_LoadMarksurfaces (lump_t *l)
{
 int i, j, count;
 int *in;
 int *out;

 in = (void *)(fileBase + l->fileofs);
 if (l->filelen % sizeof(*in))
  ri.Error (ERR_DROP, "LoadMap: funny lump size in %s",s_worldData.name);
 count = l->filelen / sizeof(*in);
 out = ri.Hunk_Alloc ( count*sizeof(*out), h_low);

 s_worldData.marksurfaces = out;
 s_worldData.nummarksurfaces = count;

 for ( i=0 ; i<count ; i++)
 {
  j = LittleLong(in[i]);
  out[i] = j;
 }
}
