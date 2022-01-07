
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_user {int dummy; } ;
struct ipmi_addr {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int* data; } ;
struct TYPE_5__ {TYPE_1__ msg; } ;


 TYPE_2__ halt_recv_msg ;
 int halt_smi_msg ;
 int init_completion (struct completion*) ;
 int ipmi_request_supply_msgs (struct ipmi_user*,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,struct completion*,int *,TYPE_2__*,int ) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static int ipmi_request_wait_for_response(struct ipmi_user *user,
       struct ipmi_addr *addr,
       struct kernel_ipmi_msg *send_msg)
{
 int rv;
 struct completion comp;

 init_completion(&comp);

 rv = ipmi_request_supply_msgs(user, addr, 0, send_msg, &comp,
          &halt_smi_msg, &halt_recv_msg, 0);
 if (rv)
  return rv;

 wait_for_completion(&comp);

 return halt_recv_msg.msg.data[0];
}
