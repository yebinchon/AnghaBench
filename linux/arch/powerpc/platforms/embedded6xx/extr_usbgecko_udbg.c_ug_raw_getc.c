
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ug_io_transaction (int) ;

__attribute__((used)) static int ug_raw_getc(void)
{
 u32 data = ug_io_transaction(0xa0000000);
 if (data & 0x08000000)
  return (data >> 16) & 0xff;
 else
  return -1;
}
