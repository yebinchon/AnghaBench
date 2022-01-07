
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_recv_msg {int done; int * user; } ;


 int GFP_ATOMIC ;
 int atomic_inc (int *) ;
 int free_recv_msg ;
 struct ipmi_recv_msg* kmalloc (int,int ) ;
 int recv_msg_inuse_count ;

__attribute__((used)) static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
{
 struct ipmi_recv_msg *rv;

 rv = kmalloc(sizeof(struct ipmi_recv_msg), GFP_ATOMIC);
 if (rv) {
  rv->user = ((void*)0);
  rv->done = free_recv_msg;
  atomic_inc(&recv_msg_inuse_count);
 }
 return rv;
}
