
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_END ;
 int ACPI_GPE0_BLK ;
 int ACPI_PM_CNT_BLK ;
 int ACPI_PM_EVT_BLK ;
 int inl (int) ;
 int outl (int,int) ;
 int outw (int,int) ;
 int pm2_ioread (int) ;
 int pm2_iowrite (int,int) ;
 int pm_ioread (int) ;
 int pm_iowrite (int,int) ;

void acpi_registers_setup(void)
{
 u32 value;


 pm_iowrite(0x20, ACPI_PM_EVT_BLK & 0xff);
 pm_iowrite(0x21, ACPI_PM_EVT_BLK >> 8);


 pm_iowrite(0x22, ACPI_PM_CNT_BLK & 0xff);
 pm_iowrite(0x23, ACPI_PM_CNT_BLK >> 8);


 pm_iowrite(0x28, ACPI_GPE0_BLK & 0xff);
 pm_iowrite(0x29, ACPI_GPE0_BLK >> 8);


 pm_iowrite(0x2e, ACPI_END & 0xff);
 pm_iowrite(0x2f, ACPI_END >> 8);



 pm_iowrite(0x0e, 1 << 3);


 outw(1, ACPI_PM_CNT_BLK);


 pm_iowrite(0x10, pm_ioread(0x10) | 1);


 value = inl(ACPI_GPE0_BLK + 4);
 outl(value | (1 << 14) | (1 << 22), ACPI_GPE0_BLK + 4);


 pm_iowrite(0x8d, pm_ioread(0x8d) & (~(1 << 1)));


 pm_iowrite(0x94, pm_ioread(0x94) | (1 << 3));


 pm_iowrite(0x33, pm_ioread(0x33) & (~(3 << 4)));


 pm_iowrite(0x3d, pm_ioread(0x3d) & (~(3 << 2)));


 pm_iowrite(0x37, pm_ioread(0x37) & (~(1 << 6)));


 pm_iowrite(0x7c, pm_ioread(0x7c) | (1 << 6));


 value = pm2_ioread(0xf6);
 value |= ((1 << 7) | (1 << 3));
 pm2_iowrite(0xf6, value);


 value = pm2_ioread(0xf8);
 value |= ((1 << 5) | (1 << 1));
 pm2_iowrite(0xf8, value);
}
