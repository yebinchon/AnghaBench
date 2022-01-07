
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {int wlen; int rlen; int * rdata; int * wdata; int command; } ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_COMMAND_READ ;
 int acpi_ec_transaction (struct acpi_ec*,struct transaction*) ;

__attribute__((used)) static int acpi_ec_read(struct acpi_ec *ec, u8 address, u8 *data)
{
 int result;
 u8 d;
 struct transaction t = {.command = ACPI_EC_COMMAND_READ,
    .wdata = &address, .rdata = &d,
    .wlen = 1, .rlen = 1};

 result = acpi_ec_transaction(ec, &t);
 *data = d;
 return result;
}
