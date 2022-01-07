
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_clear () ;
 int cpu_info ;
 int mce_available (int ) ;
 int raw_cpu_ptr (int *) ;

__attribute__((used)) static void mce_disable_cmci(void *data)
{
 if (!mce_available(raw_cpu_ptr(&cpu_info)))
  return;
 cmci_clear();
}
