
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_rediscover_work_func ;
 int cmci_supported (int*) ;
 int on_each_cpu (int ,int *,int) ;

void cmci_rediscover(void)
{
 int banks;

 if (!cmci_supported(&banks))
  return;

 on_each_cpu(cmci_rediscover_work_func, ((void*)0), 1);
}
