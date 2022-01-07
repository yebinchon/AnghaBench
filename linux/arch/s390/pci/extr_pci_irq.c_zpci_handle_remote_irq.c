
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 scalar_t__ atomic_dec_return (int *) ;
 int zpci_handle_cpu_local_irq (int) ;

__attribute__((used)) static void zpci_handle_remote_irq(void *data)
{
 atomic_t *scheduled = data;

 do {
  zpci_handle_cpu_local_irq(0);
 } while (atomic_dec_return(scheduled));
}
