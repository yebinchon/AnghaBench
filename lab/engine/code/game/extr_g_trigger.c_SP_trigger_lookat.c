
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int contents; } ;
struct TYPE_6__ {int look; TYPE_1__ r; } ;
typedef TYPE_2__ gentity_t ;


 int CONTENTS_LOOKAT ;
 int InitTrigger (TYPE_2__*) ;
 int func_lookat_look ;

void SP_trigger_lookat(gentity_t *self) {
 InitTrigger(self);
 self->r.contents |= CONTENTS_LOOKAT;
 self->look = func_lookat_look;
}
