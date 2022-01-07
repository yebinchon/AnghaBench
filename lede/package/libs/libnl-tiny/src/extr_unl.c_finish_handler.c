
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;


 int NL_SKIP ;

__attribute__((used)) static int
finish_handler(struct nl_msg *msg, void *arg)
{
 int *err = arg;
 *err = 0;
 return NL_SKIP;
}
