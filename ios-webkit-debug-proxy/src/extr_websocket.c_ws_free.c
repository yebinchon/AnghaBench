
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
struct ws_struct {int dummy; } ;
struct TYPE_5__ {int private_state; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ws_private_free (int ) ;

void ws_free(ws_t self) {
  if (self) {
    ws_private_free(self->private_state);
    memset(self, 0, sizeof(struct ws_struct));
    free(self);
  }
}
