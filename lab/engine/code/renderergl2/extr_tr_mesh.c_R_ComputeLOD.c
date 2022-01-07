
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {int frame; int origin; } ;
struct TYPE_18__ {TYPE_2__ e; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_19__ {int * bounds; } ;
typedef TYPE_5__ mdvFrame_t ;
struct TYPE_20__ {size_t numBones; int ofsFrames; } ;
typedef TYPE_6__ mdrHeader_t ;
struct TYPE_21__ {int * bounds; int * bones; } ;
typedef TYPE_7__ mdrFrame_t ;
typedef int byte ;
struct TYPE_23__ {int (* ftol ) (float) ;} ;
struct TYPE_22__ {TYPE_3__* currentModel; } ;
struct TYPE_17__ {int numLods; scalar_t__ type; TYPE_1__** mdv; scalar_t__ modelData; } ;
struct TYPE_15__ {TYPE_5__* frames; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {float value; } ;


 scalar_t__ MOD_MDR ;
 float ProjectRadius (float,int ) ;
 float RadiusFromBounds (int ,int ) ;
 TYPE_11__* r_lodbias ;
 TYPE_10__* r_lodscale ;
 TYPE_9__ ri ;
 int stub1 (float) ;
 TYPE_8__ tr ;

int R_ComputeLOD( trRefEntity_t *ent ) {
 float radius;
 float flod, lodscale;
 float projectedRadius;
 mdvFrame_t *frame;
 mdrHeader_t *mdr;
 mdrFrame_t *mdrframe;
 int lod;

 if ( tr.currentModel->numLods < 2 )
 {

  lod = 0;
 }
 else
 {



  if(tr.currentModel->type == MOD_MDR)
  {
   int frameSize;
   mdr = (mdrHeader_t *) tr.currentModel->modelData;
   frameSize = (size_t) (&((mdrFrame_t *)0)->bones[mdr->numBones]);

   mdrframe = (mdrFrame_t *) ((byte *) mdr + mdr->ofsFrames + frameSize * ent->e.frame);

   radius = RadiusFromBounds(mdrframe->bounds[0], mdrframe->bounds[1]);
  }
  else
  {

   frame = tr.currentModel->mdv[0]->frames;

   frame += ent->e.frame;

   radius = RadiusFromBounds( frame->bounds[0], frame->bounds[1] );
  }

  if ( ( projectedRadius = ProjectRadius( radius, ent->e.origin ) ) != 0 )
  {
   lodscale = r_lodscale->value;
   if (lodscale > 20) lodscale = 20;
   flod = 1.0f - projectedRadius * lodscale;
  }
  else
  {

   flod = 0;
  }

  flod *= tr.currentModel->numLods;
  lod = ri.ftol(flod);

  if ( lod < 0 )
  {
   lod = 0;
  }
  else if ( lod >= tr.currentModel->numLods )
  {
   lod = tr.currentModel->numLods - 1;
  }
 }

 lod += r_lodbias->integer;

 if ( lod >= tr.currentModel->numLods )
  lod = tr.currentModel->numLods - 1;
 if ( lod < 0 )
  lod = 0;

 return lod;
}
