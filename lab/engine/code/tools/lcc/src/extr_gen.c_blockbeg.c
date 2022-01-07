
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** freemask; int offset; } ;
typedef TYPE_1__ Env ;


 size_t FREG ;
 size_t IREG ;
 void** freemask ;
 int offset ;

void blockbeg(Env *e) {
 e->offset = offset;
 e->freemask[IREG] = freemask[IREG];
 e->freemask[FREG] = freemask[FREG];
}
