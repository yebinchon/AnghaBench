
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdc_pat_mem_cell_pdt_retinfo {int good_mem; int first_dbe_loc; int current_pdt_entries; int max_pdt_entries; } ;
struct TYPE_2__ {int good_mem; int first_dbe_loc; scalar_t__ pdt_status; int pdt_entries; int pdt_size; } ;


 int PDC_BAD_PROC ;
 scalar_t__ is_pdc_pat () ;
 int parisc_cell_num ;
 int pdc_pat_mem_pdt_cell_info (struct pdc_pat_mem_cell_pdt_retinfo*,int ) ;
 TYPE_1__ pdt_status ;

__attribute__((used)) static int get_info_pat_cell(void)
{
 struct pdc_pat_mem_cell_pdt_retinfo cell_rinfo;
 int ret;


 if (is_pdc_pat())
  ret = pdc_pat_mem_pdt_cell_info(&cell_rinfo, parisc_cell_num);
 else
  return PDC_BAD_PROC;

 pdt_status.pdt_size = cell_rinfo.max_pdt_entries;
 pdt_status.pdt_entries = cell_rinfo.current_pdt_entries;
 pdt_status.pdt_status = 0;
 pdt_status.first_dbe_loc = cell_rinfo.first_dbe_loc;
 pdt_status.good_mem = cell_rinfo.good_mem;

 return ret;
}
