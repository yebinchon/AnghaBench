
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wbinvd ;
 int on_each_cpu (int ,int *,int) ;

int wbinvd_on_all_cpus(void)
{
 on_each_cpu(__wbinvd, ((void*)0), 1);
 return 0;
}
