
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct circ_buf {char* buf; size_t head; } ;
struct TYPE_2__ {struct circ_buf out_crc; } ;


 int ACPI_AML_BUF_SIZE ;
 int ACPI_AML_OUT_KERN ;
 TYPE_1__ acpi_aml_io ;
 int acpi_aml_lock_write (struct circ_buf*,int ) ;
 int acpi_aml_unlock_fifo (int ,int) ;
 int circ_space_to_end (struct circ_buf*) ;
 int memcpy (char*,char const*,int) ;
 int min (int,int ) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static int acpi_aml_write_kern(const char *buf, int len)
{
 int ret;
 struct circ_buf *crc = &acpi_aml_io.out_crc;
 int n;
 char *p;

 ret = acpi_aml_lock_write(crc, ACPI_AML_OUT_KERN);
 if (ret < 0)
  return ret;

 smp_mb();
 p = &crc->buf[crc->head];
 n = min(len, circ_space_to_end(crc));
 memcpy(p, buf, n);

 smp_wmb();
 crc->head = (crc->head + n) & (ACPI_AML_BUF_SIZE - 1);
 acpi_aml_unlock_fifo(ACPI_AML_OUT_KERN, 1);
 return n;
}
