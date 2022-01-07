
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_recv_msg {int dummy; } ;


 int atomic_dec (int *) ;
 int panic_done_count ;

__attribute__((used)) static void dummy_recv_done_handler(struct ipmi_recv_msg *msg)
{
 atomic_dec(&panic_done_count);
}
