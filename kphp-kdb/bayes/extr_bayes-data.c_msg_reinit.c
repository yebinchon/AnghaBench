
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int random_tag; scalar_t__* text; } ;
typedef TYPE_1__ message ;


 scalar_t__* qrealloc (scalar_t__*,int,int) ;

int msg_reinit (message *msg, int len, int random_tag) {
  msg->text = qrealloc (msg->text, len + 1, msg->len);
  if (msg->text == ((void*)0)) {
    msg->len = 0;
    return -1;
  }

  msg->len = len + 1;
  msg->text[len] = 0;
  msg->random_tag = random_tag;

  return 0;
}
