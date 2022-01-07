
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sm_struct {int dummy; } ;
typedef TYPE_1__* sm_t ;
typedef scalar_t__ sm_private_t ;
struct TYPE_4__ {scalar_t__ private_state; int cleanup; int select; int send; int remove_fd; int add_fd; } ;


 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sm_add_fd ;
 int sm_cleanup ;
 int sm_private_free (scalar_t__) ;
 scalar_t__ sm_private_new (size_t) ;
 int sm_remove_fd ;
 int sm_select ;
 int sm_send ;

sm_t sm_new(size_t buf_length) {
  sm_private_t my = sm_private_new(buf_length);
  if (!my) {
    return ((void*)0);
  }
  sm_t self = (sm_t)malloc(sizeof(struct sm_struct));
  if (!self) {
    sm_private_free(my);
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct sm_struct));
  self->add_fd = sm_add_fd;
  self->remove_fd = sm_remove_fd;
  self->send = sm_send;
  self->select = sm_select;
  self->cleanup = sm_cleanup;
  self->private_state = my;
  return self;
}
