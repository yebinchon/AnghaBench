
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_io_base ;
 int ug_io_transaction (int) ;

__attribute__((used)) static int ug_is_adapter_present(void)
{
 if (!ug_io_base)
  return 0;

 return ug_io_transaction(0x90000000) == 0x04700000;
}
