
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_data {int addr2; int addr1; } ;


 int local_flush_tlb_kernel_range (int ,int ) ;

__attribute__((used)) static void flush_tlb_kernel_range_ipi(void *info)
{
 struct flush_tlb_data *fd = info;

 local_flush_tlb_kernel_range(fd->addr1, fd->addr2);
}
