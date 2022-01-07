
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct dl_struct {int dummy; } ;
struct dl_private {int dummy; } ;
typedef scalar_t__ ht_t ;
typedef TYPE_1__* dl_t ;
typedef TYPE_1__* dl_private_t ;
typedef TYPE_1__* cb_t ;
struct TYPE_8__ {scalar_t__ device_num_to_device_id; struct TYPE_8__* in; struct TYPE_8__* private_state; int on_recv; int start; } ;


 int HT_INT_KEYS ;
 TYPE_1__* cb_new () ;
 int dl_on_recv ;
 int dl_start ;
 int free (TYPE_1__*) ;
 scalar_t__ ht_new (int ) ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

dl_t dl_new() {
  dl_t self = (dl_t)malloc(sizeof(struct dl_struct));
  dl_private_t my = (dl_private_t)malloc(sizeof(struct dl_private));
  cb_t in = cb_new();
  ht_t d_ht = ht_new(HT_INT_KEYS);
  if (!self || !my || !in || !d_ht) {
    free(self);
    free(my);
    free(in);
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct dl_struct));
  memset(my, 0, sizeof(struct dl_private));
  self->start = dl_start;
  self->on_recv = dl_on_recv;
  self->private_state = my;
  my->in = in;
  my->device_num_to_device_id = d_ht;
  return self;
}
