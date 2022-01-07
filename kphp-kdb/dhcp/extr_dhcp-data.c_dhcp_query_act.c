
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; int type; } ;
typedef TYPE_1__ dhcp_message_t ;



 int process_discover (TYPE_1__*,unsigned char*,int) ;
 int vkprintf (int,char*) ;

int dhcp_query_act (dhcp_message_t *M, unsigned char *out, int olen) {
  if (M->op != 1) {
    vkprintf (2, "Op code isn't BOOTREQUEST.\n");
    return -1;
  }

  switch (M->type) {
    case 128: return process_discover (M, out, olen);
    default: return -1;
  }
  return -1;
}
