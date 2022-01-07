
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_discover (int) ;
 scalar_t__ cmci_supported (int*) ;

__attribute__((used)) static void cmci_rediscover_work_func(void *arg)
{
 int banks;


 if (cmci_supported(&banks))
  cmci_discover(banks);
}
