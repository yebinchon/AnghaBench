
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int random_tag; } ;
typedef TYPE_1__ message ;


 int msg_free (TYPE_1__*) ;

int msg_verify (message *msg, int random_tag) {
  if (msg == ((void*)0)) {
    return -1;
  }

  if (msg->random_tag != random_tag) {

    msg_free (msg);

    return -1;
  }

  return 0;
}
