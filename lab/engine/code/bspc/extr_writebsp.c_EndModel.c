
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ firstface; scalar_t__ numfaces; } ;
typedef TYPE_1__ dmodel_t ;


 TYPE_1__* dmodels ;
 scalar_t__ numfaces ;
 size_t nummodels ;

void EndModel (void)
{
 dmodel_t *mod;

 mod = &dmodels[nummodels];

 mod->numfaces = numfaces - mod->firstface;

 nummodels++;
}
