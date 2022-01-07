
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pct_register {int bit_width; int address; } ;


 int acpi_os_write_port (int ,int ,int ) ;

__attribute__((used)) static void cpu_freq_write_io(struct acpi_pct_register *reg, u32 val)
{
 acpi_os_write_port(reg->address, val, reg->bit_width);
}
