
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int random_tag; scalar_t__ len; int * text; } ;
typedef TYPE_1__ message ;


 int qfree (int *,scalar_t__) ;

void msg_free (message *msg) {
 if (msg->text != ((void*)0)) {
    qfree (msg->text, msg->len);
    msg->text = ((void*)0);
  }
  msg->len = 0;
  msg->random_tag = -1;
}
