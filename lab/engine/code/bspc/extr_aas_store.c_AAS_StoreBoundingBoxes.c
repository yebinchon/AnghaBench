
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int aas_bbox_t ;
struct TYPE_6__ {int numbboxes; int bboxes; } ;
struct TYPE_5__ {int numbboxes; int bboxes; } ;
struct TYPE_4__ {int max_bboxes; } ;


 int Error (char*,int) ;
 TYPE_3__ aasworld ;
 TYPE_2__ cfg ;
 TYPE_1__ max_aas ;
 int memcpy (int ,int ,int) ;

void AAS_StoreBoundingBoxes(void)
{
 if (cfg.numbboxes > max_aas.max_bboxes)
 {
  Error("more than %d bounding boxes", max_aas.max_bboxes);
 }
 aasworld.numbboxes = cfg.numbboxes;
 memcpy(aasworld.bboxes, cfg.bboxes, cfg.numbboxes * sizeof(aas_bbox_t));
}
