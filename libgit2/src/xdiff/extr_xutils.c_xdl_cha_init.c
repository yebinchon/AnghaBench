
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long isize; long nsize; scalar_t__ scurr; int * sncur; int ancur; int * tail; int head; } ;
typedef TYPE_1__ chastore_t ;



int xdl_cha_init(chastore_t *cha, long isize, long icount) {

 cha->head = cha->tail = ((void*)0);
 cha->isize = isize;
 cha->nsize = icount * isize;
 cha->ancur = cha->sncur = ((void*)0);
 cha->scurr = 0;

 return 0;
}
