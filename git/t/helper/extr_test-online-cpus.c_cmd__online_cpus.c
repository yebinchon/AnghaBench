
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int online_cpus () ;
 int printf (char*,int) ;

int cmd__online_cpus(int argc, const char **argv)
{
 printf("%d\n", online_cpus());
 return 0;
}
