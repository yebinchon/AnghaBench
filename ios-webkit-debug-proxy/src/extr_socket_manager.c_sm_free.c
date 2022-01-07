
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sm_struct {int dummy; } ;
typedef TYPE_1__* sm_t ;
struct TYPE_5__ {int private_state; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sm_private_free (int ) ;

void sm_free(sm_t self) {
  if (self) {
    sm_private_free(self->private_state);
    memset(self, 0, sizeof(struct sm_struct));
    free(self);
  }
}
