
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int alarm (int ) ;
 int opt_timeout ;

__attribute__((used)) static unsigned int testcase_set_timeout_(void)
{
 return alarm(opt_timeout);
}
