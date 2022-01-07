
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
struct wi_struct {int dummy; } ;
struct TYPE_5__ {int private_state; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int wi_private_free (int ) ;

void wi_free(wi_t self) {
  if (self) {
    wi_private_free(self->private_state);
    memset(self, 0, sizeof(struct wi_struct));
    free(self);
  }
}
