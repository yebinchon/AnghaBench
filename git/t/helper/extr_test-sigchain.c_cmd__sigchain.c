
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int one ;
 int raise (int ) ;
 int sigchain_push (int ,int ) ;
 int three ;
 int two ;

int cmd__sigchain(int argc, const char **argv)
{
 sigchain_push(SIGTERM, one);
 sigchain_push(SIGTERM, two);
 sigchain_push(SIGTERM, three);
 raise(SIGTERM);
 return 0;
}
