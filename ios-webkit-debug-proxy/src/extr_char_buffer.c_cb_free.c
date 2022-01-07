
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* cb_t ;
struct TYPE_4__ {struct TYPE_4__* begin; } ;


 int free (TYPE_1__*) ;

void cb_free(cb_t self) {
  if (self) {
    if (self->begin) {
      free(self->begin);
    }
    free(self);
  }
}
