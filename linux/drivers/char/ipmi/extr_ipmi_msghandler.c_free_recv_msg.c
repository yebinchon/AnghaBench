
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_recv_msg {int dummy; } ;


 int atomic_dec (int *) ;
 int kfree (struct ipmi_recv_msg*) ;
 int recv_msg_inuse_count ;

__attribute__((used)) static void free_recv_msg(struct ipmi_recv_msg *msg)
{
 atomic_dec(&recv_msg_inuse_count);
 kfree(msg);
}
