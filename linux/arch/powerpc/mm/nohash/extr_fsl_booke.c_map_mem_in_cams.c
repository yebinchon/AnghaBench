
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 unsigned long PAGE_OFFSET ;
 unsigned long map_mem_in_cams_addr (int ,unsigned long,unsigned long,int,int) ;
 int memstart_addr ;

unsigned long map_mem_in_cams(unsigned long ram, int max_cam_idx, bool dryrun)
{
 unsigned long virt = PAGE_OFFSET;
 phys_addr_t phys = memstart_addr;

 return map_mem_in_cams_addr(phys, virt, ram, max_cam_idx, dryrun);
}
