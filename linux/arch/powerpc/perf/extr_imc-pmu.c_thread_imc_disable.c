
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_each_cpu (int ,int *,int) ;
 int thread_imc_ldbar_disable ;

void thread_imc_disable(void)
{
 on_each_cpu(thread_imc_ldbar_disable, ((void*)0), 1);
}
