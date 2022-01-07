
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {int rlen; int wlen; int * rdata; int * wdata; int command; } ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_BURST_ENABLE ;
 int acpi_ec_transaction (struct acpi_ec*,struct transaction*) ;

__attribute__((used)) static int acpi_ec_burst_enable(struct acpi_ec *ec)
{
 u8 d;
 struct transaction t = {.command = ACPI_EC_BURST_ENABLE,
    .wdata = ((void*)0), .rdata = &d,
    .wlen = 0, .rlen = 1};

 return acpi_ec_transaction(ec, &t);
}
