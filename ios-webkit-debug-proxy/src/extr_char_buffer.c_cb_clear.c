
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* cb_t ;
struct TYPE_3__ {int begin; int tail; int head; } ;



void cb_clear(cb_t self) {
  self->head = self->begin;
  self->tail = self->begin;
}
