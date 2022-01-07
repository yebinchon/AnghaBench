
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct topa_page {int topa; } ;
struct pt_buffer {int output_off; int cur_idx; int * cur; } ;


 int MSR_IA32_RTIT_OUTPUT_BASE ;
 int MSR_IA32_RTIT_OUTPUT_MASK ;
 struct topa_page* phys_to_virt (int) ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static void pt_read_offset(struct pt_buffer *buf)
{
 u64 offset, base_topa;
 struct topa_page *tp;

 rdmsrl(MSR_IA32_RTIT_OUTPUT_BASE, base_topa);
 tp = phys_to_virt(base_topa);
 buf->cur = &tp->topa;

 rdmsrl(MSR_IA32_RTIT_OUTPUT_MASK, offset);

 buf->output_off = offset >> 32;

 buf->cur_idx = (offset & 0xffffff80) >> 7;
}
