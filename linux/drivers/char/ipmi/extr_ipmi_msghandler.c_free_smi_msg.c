
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int dummy; } ;


 int atomic_dec (int *) ;
 int kfree (struct ipmi_smi_msg*) ;
 int smi_msg_inuse_count ;

__attribute__((used)) static void free_smi_msg(struct ipmi_smi_msg *msg)
{
 atomic_dec(&smi_msg_inuse_count);
 kfree(msg);
}
