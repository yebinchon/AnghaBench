
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int imgFlags_t ;
struct TYPE_5__ {int image; } ;
typedef TYPE_2__ cubemap_t ;
struct TYPE_6__ {int numCubemaps; TYPE_1__* world; TYPE_2__* cubemaps; } ;
struct TYPE_4__ {int baseName; } ;


 int Com_sprintf (char*,int,char*,int ,int) ;
 int IMGFLAG_CLAMPTOEDGE ;
 int IMGFLAG_CUBEMAP ;
 int IMGFLAG_MIPMAP ;
 int IMGFLAG_NOLIGHTSCALE ;
 int IMGTYPE_COLORALPHA ;
 int MAX_QPATH ;
 int R_FindImageFile (char*,int ,int) ;
 TYPE_3__ tr ;

void R_LoadCubemaps(void)
{
 int i;
 imgFlags_t flags = IMGFLAG_CLAMPTOEDGE | IMGFLAG_MIPMAP | IMGFLAG_NOLIGHTSCALE | IMGFLAG_CUBEMAP;

 for (i = 0; i < tr.numCubemaps; i++)
 {
  char filename[MAX_QPATH];
  cubemap_t *cubemap = &tr.cubemaps[i];

  Com_sprintf(filename, MAX_QPATH, "cubemaps/%s/%03d.dds", tr.world->baseName, i);

  cubemap->image = R_FindImageFile(filename, IMGTYPE_COLORALPHA, flags);
 }
}
