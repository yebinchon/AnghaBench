
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_LIO1_BASE ;
 int LOONGSON_PCIIO_BASE ;
 int LOONGSON_REG_BASE ;
 unsigned long* _loongson_uart_base ;
 scalar_t__ ioremap_nocache (int ,int) ;
 int * loongson_uart_base ;
 int mips_machtype ;

void prom_init_loongson_uart_base(void)
{
 switch (mips_machtype) {
 case 128:

  loongson_uart_base[0] = LOONGSON_REG_BASE + 0x1e0;
  break;
 case 134:
  loongson_uart_base[0] = LOONGSON_PCIIO_BASE + 0x3f8;
  break;
 case 133:
 case 132:
  loongson_uart_base[0] = LOONGSON_PCIIO_BASE + 0x2f8;
  break;
 case 131:
 case 129:
 case 135:
 case 130:
 default:

  loongson_uart_base[0] = LOONGSON_LIO1_BASE + 0x3f8;
  break;
 }

 _loongson_uart_base[0] =
  (unsigned long)ioremap_nocache(loongson_uart_base[0], 8);
}
