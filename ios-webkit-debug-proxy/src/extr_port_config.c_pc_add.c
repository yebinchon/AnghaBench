
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pc_entry_struct {int dummy; } ;
typedef TYPE_1__* pc_t ;
typedef TYPE_2__* pc_entry_t ;
struct TYPE_6__ {char const* device_id; int min_port; int max_port; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* tail; TYPE_2__* head; } ;


 TYPE_2__* malloc (int) ;

void pc_add(pc_t self, const char *device_id, int min_port, int max_port) {
  pc_entry_t e = malloc(sizeof(struct pc_entry_struct));
  e->device_id = device_id;
  e->min_port = min_port;
  e->max_port = max_port;
  e->next = ((void*)0);
  if (self->tail) {
    self->tail->next = e;
  } else {
    self->head = e;
  }
  self->tail = e;
}
