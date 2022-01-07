
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_smi_msg {int done; } ;
struct ipmi_smi {int send_info; TYPE_2__* handlers; TYPE_1__* addrinfo; } ;
struct ipmi_recv_msg {int done; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_4__ {int (* flush_messages ) (int ) ;} ;
struct TYPE_3__ {int lun; int address; } ;


 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int dummy_recv_done_handler ;
 int dummy_smi_done_handler ;
 int i_ipmi_request (int *,struct ipmi_smi*,struct ipmi_addr*,int ,struct kernel_ipmi_msg*,struct ipmi_smi*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,int ,int ,int ,int ,int) ;
 int ipmi_poll (struct ipmi_smi*) ;
 int panic_done_count ;
 int stub1 (int ) ;

__attribute__((used)) static void ipmi_panic_request_and_wait(struct ipmi_smi *intf,
     struct ipmi_addr *addr,
     struct kernel_ipmi_msg *msg)
{
 struct ipmi_smi_msg smi_msg;
 struct ipmi_recv_msg recv_msg;
 int rv;

 smi_msg.done = dummy_smi_done_handler;
 recv_msg.done = dummy_recv_done_handler;
 atomic_add(2, &panic_done_count);
 rv = i_ipmi_request(((void*)0),
       intf,
       addr,
       0,
       msg,
       intf,
       &smi_msg,
       &recv_msg,
       0,
       intf->addrinfo[0].address,
       intf->addrinfo[0].lun,
       0, 1);
 if (rv)
  atomic_sub(2, &panic_done_count);
 else if (intf->handlers->flush_messages)
  intf->handlers->flush_messages(intf->send_info);

 while (atomic_read(&panic_done_count) != 0)
  ipmi_poll(intf);
}
