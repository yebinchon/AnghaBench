
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int dummy; } ;
struct nlmsgerr {int error; } ;


 int NL_SKIP ;

__attribute__((used)) static int
error_handler(struct sockaddr_nl *nla, struct nlmsgerr *err, void *arg)
{
 int *ret = arg;
 *ret = err->error;
 return NL_SKIP;
}
