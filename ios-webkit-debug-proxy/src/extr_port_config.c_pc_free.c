
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pc_struct {int dummy; } ;
typedef TYPE_1__* pc_t ;
struct TYPE_6__ {scalar_t__ re; struct TYPE_6__* groups; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pc_clear (TYPE_1__*) ;
 int regfree (scalar_t__) ;

void pc_free(pc_t self) {
  if (self) {
    pc_clear(self);
    free(self->groups);
    if (self->re) {
      regfree(self->re);
    }
    memset(self, 0, sizeof(struct pc_struct));
    free(self);
  }
}
