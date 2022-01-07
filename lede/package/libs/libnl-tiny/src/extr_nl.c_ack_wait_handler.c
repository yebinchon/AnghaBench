
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 int NL_STOP ;

__attribute__((used)) static int ack_wait_handler(struct nl_msg *msg, void *arg)
{
 return NL_STOP;
}
