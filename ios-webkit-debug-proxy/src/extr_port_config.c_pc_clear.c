
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pc_entry_struct {int dummy; } ;
typedef TYPE_1__* pc_t ;
typedef TYPE_2__* pc_entry_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int * tail; TYPE_2__* head; } ;


 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

void pc_clear(pc_t self) {
  if (self) {
    pc_entry_t e = self->head;
    while (e) {
      pc_entry_t next = e->next;
      memset(e, 0, sizeof(struct pc_entry_struct));
      free(e);
      e = next;
    }
    self->head = ((void*)0);
    self->tail = ((void*)0);
  }
}
