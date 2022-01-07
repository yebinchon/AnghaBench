
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info_source; } ;


 int MEM_DETECT_BIN_SEARCH ;
 int MEM_DETECT_DIAG260 ;
 int MEM_DETECT_SCLP_READ_INFO ;
 int MEM_DETECT_SCLP_STOR_INFO ;
 int add_mem_detect_block (int ,scalar_t__) ;
 int diag260 () ;
 scalar_t__ get_mem_detect_end () ;
 scalar_t__ max_physmem_end ;
 TYPE_1__ mem_detect ;
 int sclp_early_get_memsize (scalar_t__*) ;
 int sclp_early_read_storage_info () ;
 int search_mem_end () ;

void detect_memory(void)
{
 sclp_early_get_memsize(&max_physmem_end);

 if (!sclp_early_read_storage_info()) {
  mem_detect.info_source = MEM_DETECT_SCLP_STOR_INFO;
  return;
 }

 if (!diag260()) {
  mem_detect.info_source = MEM_DETECT_DIAG260;
  return;
 }

 if (max_physmem_end) {
  add_mem_detect_block(0, max_physmem_end);
  mem_detect.info_source = MEM_DETECT_SCLP_READ_INFO;
  return;
 }

 search_mem_end();
 mem_detect.info_source = MEM_DETECT_BIN_SEARCH;
 max_physmem_end = get_mem_detect_end();
}
