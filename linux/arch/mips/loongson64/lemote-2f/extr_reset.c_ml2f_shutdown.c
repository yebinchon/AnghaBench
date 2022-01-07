
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int BIT_SHUTDOWN_ON ;
 int EC_SHUTDOWN_IO_PORT_DATA ;
 int EC_SHUTDOWN_IO_PORT_HIGH ;
 int EC_SHUTDOWN_IO_PORT_LOW ;
 int REG_SHUTDOWN_HIGH ;
 int REG_SHUTDOWN_LOW ;
 int delay () ;
 int inb (int ) ;
 int mmiowb () ;
 int outb (int,int ) ;

__attribute__((used)) static void ml2f_shutdown(void)
{
 u8 val;
 u64 i;

 outb(REG_SHUTDOWN_HIGH, EC_SHUTDOWN_IO_PORT_HIGH);
 outb(REG_SHUTDOWN_LOW, EC_SHUTDOWN_IO_PORT_LOW);
 mmiowb();
 val = inb(EC_SHUTDOWN_IO_PORT_DATA);
 outb(val & (~BIT_SHUTDOWN_ON), EC_SHUTDOWN_IO_PORT_DATA);
 mmiowb();

 for (i = 0; i < 0x10000; i++)
  delay();
 outb(val | BIT_SHUTDOWN_ON, EC_SHUTDOWN_IO_PORT_DATA);
 mmiowb();
}
