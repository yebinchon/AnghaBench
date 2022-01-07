
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_notes_buf_size; scalar_t__ cpu_notes_buf_vaddr; } ;


 int fadump_free_buffer (scalar_t__,scalar_t__) ;
 TYPE_1__ fw_dump ;

void fadump_free_cpu_notes_buf(void)
{
 if (!fw_dump.cpu_notes_buf_vaddr)
  return;

 fadump_free_buffer(fw_dump.cpu_notes_buf_vaddr,
      fw_dump.cpu_notes_buf_size);
 fw_dump.cpu_notes_buf_vaddr = 0;
 fw_dump.cpu_notes_buf_size = 0;
}
