
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int timestamp; int command_addr; } ;


 int ec_dbg_raw (char*,int ) ;
 int jiffies ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void acpi_ec_write_cmd(struct acpi_ec *ec, u8 command)
{
 ec_dbg_raw("EC_SC(W) = 0x%2.2x", command);
 outb(command, ec->command_addr);
 ec->timestamp = jiffies;
}
