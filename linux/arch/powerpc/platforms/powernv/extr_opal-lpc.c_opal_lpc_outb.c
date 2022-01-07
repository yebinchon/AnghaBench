
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int OPAL_LPC_IO ;
 scalar_t__ opal_lpc_chip_id ;
 int opal_lpc_write (scalar_t__,int ,unsigned long,int ,int) ;

__attribute__((used)) static void opal_lpc_outb(u8 val, unsigned long port)
{
 if (opal_lpc_chip_id < 0 || port > 0xffff)
  return;
 opal_lpc_write(opal_lpc_chip_id, OPAL_LPC_IO, port, val, 1);
}
