
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; } ;
typedef TYPE_1__ message ;



char *msg_get_buf (message *msg) {
  if (msg == ((void*)0)) {
    return ((void*)0);
  }

  return msg->text;
}
