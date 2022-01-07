
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ACPI_GPE0_BLK ;
 int ACPI_PM_EVT_BLK ;
 int inl (int ) ;
 int inw (int ) ;
 int outl (int ,int ) ;
 int outw (int,int ) ;

__attribute__((used)) static void acpi_hw_clear_status(void)
{
 u16 value;


 value = inw(ACPI_PM_EVT_BLK);
 value |= (1 << 8 | 1 << 15);
 outw(value, ACPI_PM_EVT_BLK);


 outl(inl(ACPI_GPE0_BLK), ACPI_GPE0_BLK);
}
