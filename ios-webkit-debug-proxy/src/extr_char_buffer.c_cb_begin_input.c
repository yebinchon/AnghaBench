
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef TYPE_1__* cb_t ;
struct TYPE_4__ {char const* tail; char const* head; char const* in_head; char const* in_tail; int begin; } ;


 scalar_t__ cb_ensure_capacity (TYPE_1__*,scalar_t__) ;
 int memcpy (char const*,char const*,scalar_t__) ;

int cb_begin_input(cb_t self, const char *buf, ssize_t length) {
  if (!buf || length < 0) {
    return -1;
  }


  int can_share = (!self->begin || self->tail == self->head);
  if (can_share) {
    self->in_head = buf;
    self->in_tail = buf + length;
  } else {
    if (cb_ensure_capacity(self, length)) {
      return -1;
    }
    if (length > 0) {
      memcpy(self->tail, buf, length);
      self->tail += length;
    }
    self->in_head = self->head;
    self->in_tail = self->tail;
  }
  return 0;
}
