
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dl_struct {int dummy; } ;
struct dl_private {int dummy; } ;
typedef TYPE_1__* dl_t ;
typedef TYPE_1__* dl_private_t ;
struct TYPE_6__ {int device_num_to_device_id; int in; struct TYPE_6__* private_state; } ;


 int cb_free (int ) ;
 int free (TYPE_1__*) ;
 int ht_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void dl_free(dl_t self) {
  if (self) {
    dl_private_t my = self->private_state;
    if (my) {
      cb_free(my->in);
      ht_free(my->device_num_to_device_id);
      memset(my, 0, sizeof(struct dl_private));
      free(my);
    }
    memset(self, 0, sizeof(struct dl_struct));
    free(self);
  }
}
