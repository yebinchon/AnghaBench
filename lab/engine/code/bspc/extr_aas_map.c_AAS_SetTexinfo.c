
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ texinfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int contents; int numsides; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;


 int CONTENTS_AREAPORTAL ;
 int CONTENTS_CLUSTERPORTAL ;
 int CONTENTS_DONOTENTER ;
 int CONTENTS_JUMPPAD ;
 int CONTENTS_LADDER ;
 int CONTENTS_LAVA ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_TELEPORTER ;
 int CONTENTS_WATER ;
 int CONTENTS_WINDOW ;
 int SFL_BEVEL ;
 int SFL_TEXTURED ;
 scalar_t__ TEXINFO_NODE ;

void AAS_SetTexinfo(mapbrush_t *brush)
{
 int n;
 side_t *side;

 if (brush->contents & (CONTENTS_LADDER
         | CONTENTS_AREAPORTAL
         | CONTENTS_CLUSTERPORTAL
         | CONTENTS_TELEPORTER
         | CONTENTS_JUMPPAD
         | CONTENTS_DONOTENTER
         | CONTENTS_WATER
         | CONTENTS_LAVA
         | CONTENTS_SLIME
         | CONTENTS_WINDOW
         | CONTENTS_PLAYERCLIP))
 {


  for (n = 0; n < brush->numsides; n++)
  {
   side = brush->original_sides + n;

   side->texinfo = 0;
  }
 }
 else
 {


  for (n = 0; n < brush->numsides; n++)
  {
   side = brush->original_sides + n;

   if (side->flags & (SFL_TEXTURED|SFL_BEVEL)) side->texinfo = 0;
   else side->texinfo = TEXINFO_NODE;
  }
 }
}
