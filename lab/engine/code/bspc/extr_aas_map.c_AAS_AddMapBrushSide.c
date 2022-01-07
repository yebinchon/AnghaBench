
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int planenum; scalar_t__ texinfo; scalar_t__ surf; int contents; int * winding; int * original; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int numsides; int contents; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;


 int Error (char*) ;
 scalar_t__ MAX_MAPFILE_BRUSHSIDES ;
 int SFL_BEVEL ;
 int SFL_VISIBLE ;
 scalar_t__ nummapbrushsides ;

void AAS_AddMapBrushSide(mapbrush_t *brush, int planenum)
{
 side_t *side;

 if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
  Error ("MAX_MAPFILE_BRUSHSIDES");

 side = brush->original_sides + brush->numsides;
 side->original = ((void*)0);
 side->winding = ((void*)0);
 side->contents = brush->contents;
 side->flags &= ~(SFL_BEVEL|SFL_VISIBLE);
 side->surf = 0;
 side->planenum = planenum;
 side->texinfo = 0;

 nummapbrushsides++;
 brush->numsides++;
}
