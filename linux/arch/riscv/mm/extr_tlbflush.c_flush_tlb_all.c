
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sbi_remote_sfence_vma (int *,int ,int) ;

void flush_tlb_all(void)
{
 sbi_remote_sfence_vma(((void*)0), 0, -1);
}
