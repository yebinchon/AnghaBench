
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct circ_buf {char* buf; size_t tail; } ;
struct TYPE_2__ {struct circ_buf in_crc; } ;


 int ACPI_AML_BUF_SIZE ;
 int ACPI_AML_IN_KERN ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_lock_read (struct circ_buf*,int ) ;
 int acpi_aml_unlock_fifo (int ,int) ;
 int smp_mb () ;
 int smp_rmb () ;

__attribute__((used)) static int acpi_aml_readb_kern(void)
{
 int ret;
 struct circ_buf *crc = &acpi_aml_io.in_crc;
 char *p;

 ret = acpi_aml_lock_read(crc, ACPI_AML_IN_KERN);
 if (ret < 0)
  return ret;

 smp_rmb();
 p = &crc->buf[crc->tail];
 ret = (int)*p;

 smp_mb();
 crc->tail = (crc->tail + 1) & (ACPI_AML_BUF_SIZE - 1);
 acpi_aml_unlock_fifo(ACPI_AML_IN_KERN, 1);
 return ret;
}
