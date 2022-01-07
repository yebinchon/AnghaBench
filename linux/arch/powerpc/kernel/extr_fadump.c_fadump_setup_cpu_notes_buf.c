
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int note_buf_t ;
struct TYPE_2__ {int cpu_notes_buf_size; unsigned long cpu_notes_buf_vaddr; } ;


 int ENOMEM ;
 int PAGE_ALIGN (int) ;
 scalar_t__ fadump_alloc_buffer (int) ;
 TYPE_1__ fw_dump ;
 int pr_debug (char*,int,unsigned long) ;
 int pr_err (char*,int) ;

s32 fadump_setup_cpu_notes_buf(u32 num_cpus)
{

 fw_dump.cpu_notes_buf_size = num_cpus * sizeof(note_buf_t);
 fw_dump.cpu_notes_buf_size = PAGE_ALIGN(fw_dump.cpu_notes_buf_size);
 fw_dump.cpu_notes_buf_vaddr =
  (unsigned long)fadump_alloc_buffer(fw_dump.cpu_notes_buf_size);
 if (!fw_dump.cpu_notes_buf_vaddr) {
  pr_err("Failed to allocate %ld bytes for CPU notes buffer\n",
         fw_dump.cpu_notes_buf_size);
  return -ENOMEM;
 }

 pr_debug("Allocated buffer for cpu notes of size %ld at 0x%lx\n",
   fw_dump.cpu_notes_buf_size,
   fw_dump.cpu_notes_buf_vaddr);
 return 0;
}
