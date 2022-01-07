
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int command_addr; } ;


 int ACPI_EC_FLAG_BURST ;
 int ACPI_EC_FLAG_CMD ;
 int ACPI_EC_FLAG_IBF ;
 int ACPI_EC_FLAG_OBF ;
 int ACPI_EC_FLAG_SCI ;
 int ec_dbg_raw (char*,int,int,int,int,int,int) ;
 int inb (int ) ;

__attribute__((used)) static inline u8 acpi_ec_read_status(struct acpi_ec *ec)
{
 u8 x = inb(ec->command_addr);

 ec_dbg_raw("EC_SC(R) = 0x%2.2x "
     "SCI_EVT=%d BURST=%d CMD=%d IBF=%d OBF=%d",
     x,
     !!(x & ACPI_EC_FLAG_SCI),
     !!(x & ACPI_EC_FLAG_BURST),
     !!(x & ACPI_EC_FLAG_CMD),
     !!(x & ACPI_EC_FLAG_IBF),
     !!(x & ACPI_EC_FLAG_OBF));
 return x;
}
