
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (int,int ) ;
 int cmci_disable_bank (int) ;
 int mce_poll_banks ;
 int this_cpu_ptr (int ) ;

__attribute__((used)) static void __mce_disable_bank(void *arg)
{
 int bank = *((int *)arg);
 __clear_bit(bank, this_cpu_ptr(mce_poll_banks));
 cmci_disable_bank(bank);
}
