
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 int NL_OK ;

__attribute__((used)) static int noop_seq_check(struct nl_msg *msg, void *arg)
{
 return NL_OK;
}
