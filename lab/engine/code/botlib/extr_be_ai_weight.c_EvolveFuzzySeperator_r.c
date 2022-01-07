
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ weight; double maxweight; double minweight; struct TYPE_3__* next; struct TYPE_3__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 scalar_t__ WT_BALANCE ;
 double crandom () ;
 double random () ;

void EvolveFuzzySeperator_r(fuzzyseperator_t *fs)
{
 if (fs->child)
 {
  EvolveFuzzySeperator_r(fs->child);
 }
 else if (fs->type == WT_BALANCE)
 {

  if (random() < 0.01) fs->weight += crandom() * (fs->maxweight - fs->minweight);
  else fs->weight += crandom() * (fs->maxweight - fs->minweight) * 0.5;

  if (fs->weight < fs->minweight) fs->minweight = fs->weight;
  else if (fs->weight > fs->maxweight) fs->maxweight = fs->weight;
 }
 if (fs->next) EvolveFuzzySeperator_r(fs->next);
}
