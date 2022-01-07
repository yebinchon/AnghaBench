
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; float weight; float maxweight; float minweight; struct TYPE_3__* next; struct TYPE_3__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 scalar_t__ WT_BALANCE ;

void ScaleFuzzySeperator_r(fuzzyseperator_t *fs, float scale)
{
 if (fs->child)
 {
  ScaleFuzzySeperator_r(fs->child, scale);
 }
 else if (fs->type == WT_BALANCE)
 {

  fs->weight = (float) (fs->maxweight + fs->minweight) * scale;

  if (fs->weight < fs->minweight) fs->weight = fs->minweight;
  else if (fs->weight > fs->maxweight) fs->weight = fs->maxweight;
 }
 if (fs->next) ScaleFuzzySeperator_r(fs->next, scale);
}
