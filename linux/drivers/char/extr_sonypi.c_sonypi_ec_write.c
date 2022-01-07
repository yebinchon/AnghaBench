
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ITERATIONS_LONG ;
 scalar_t__ SONYPI_ACPI_ACTIVE ;
 int SONYPI_CST_IOPORT ;
 int SONYPI_DATA_IOPORT ;
 int ec_write (int,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int wait_on_command (int,int,int ) ;

__attribute__((used)) static int sonypi_ec_write(u8 addr, u8 value)
{




 wait_on_command(1, inb_p(SONYPI_CST_IOPORT) & 3, ITERATIONS_LONG);
 outb_p(0x81, SONYPI_CST_IOPORT);
 wait_on_command(0, inb_p(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
 outb_p(addr, SONYPI_DATA_IOPORT);
 wait_on_command(0, inb_p(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
 outb_p(value, SONYPI_DATA_IOPORT);
 wait_on_command(0, inb_p(SONYPI_CST_IOPORT) & 2, ITERATIONS_LONG);
 return 0;
}
