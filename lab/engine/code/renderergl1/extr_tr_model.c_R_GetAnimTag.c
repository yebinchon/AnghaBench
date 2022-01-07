
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t boneIndex; int name; } ;
typedef TYPE_2__ mdrTag_t ;
struct TYPE_11__ {int numFrames; int ofsTags; int numTags; size_t numBones; int ofsFrames; } ;
typedef TYPE_3__ mdrHeader_t ;
struct TYPE_12__ {TYPE_1__* bones; } ;
typedef TYPE_4__ mdrFrame_t ;
struct TYPE_13__ {int * origin; int ** axis; int name; } ;
typedef TYPE_5__ md3Tag_t ;
typedef int byte ;
struct TYPE_9__ {int ** matrix; } ;


 int Q_strncpyz (int ,int ,int) ;
 int strcmp (int ,char const*) ;

md3Tag_t *R_GetAnimTag( mdrHeader_t *mod, int framenum, const char *tagName, md3Tag_t * dest)
{
 int i, j, k;
 int frameSize;
 mdrFrame_t *frame;
 mdrTag_t *tag;

 if ( framenum >= mod->numFrames )
 {

  framenum = mod->numFrames - 1;
 }

 tag = (mdrTag_t *)((byte *)mod + mod->ofsTags);
 for ( i = 0 ; i < mod->numTags ; i++, tag++ )
 {
  if ( !strcmp( tag->name, tagName ) )
  {
   Q_strncpyz(dest->name, tag->name, sizeof(dest->name));



   frameSize = (intptr_t)( &((mdrFrame_t *)0)->bones[ mod->numBones ] );
   frame = (mdrFrame_t *)((byte *)mod + mod->ofsFrames + framenum * frameSize );

   for (j = 0; j < 3; j++)
   {
    for (k = 0; k < 3; k++)
     dest->axis[j][k]=frame->bones[tag->boneIndex].matrix[k][j];
   }

   dest->origin[0]=frame->bones[tag->boneIndex].matrix[0][3];
   dest->origin[1]=frame->bones[tag->boneIndex].matrix[1][3];
   dest->origin[2]=frame->bones[tag->boneIndex].matrix[2][3];

   return dest;
  }
 }

 return ((void*)0);
}
