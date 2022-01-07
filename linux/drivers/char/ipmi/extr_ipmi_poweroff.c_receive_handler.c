
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_recv_msg {struct completion* user_msg_data; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void receive_handler(struct ipmi_recv_msg *recv_msg, void *handler_data)
{
 struct completion *comp = recv_msg->user_msg_data;

 if (comp)
  complete(comp);
}
