
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {int wlen; int rlen; int * rdata; int * wdata; int command; } ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_COMMAND_WRITE ;
 int acpi_ec_transaction (struct acpi_ec*,struct transaction*) ;

__attribute__((used)) static int acpi_ec_write(struct acpi_ec *ec, u8 address, u8 data)
{
 u8 wdata[2] = { address, data };
 struct transaction t = {.command = ACPI_EC_COMMAND_WRITE,
    .wdata = wdata, .rdata = ((void*)0),
    .wlen = 2, .rlen = 0};

 return acpi_ec_transaction(ec, &t);
}
