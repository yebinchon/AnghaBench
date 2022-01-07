
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAKPOINT_INSTRUCTION ;
 int memset32 (void*,int ,unsigned int) ;

__attribute__((used)) static void bpf_jit_fill_ill_insns(void *area, unsigned int size)
{
 memset32(area, BREAKPOINT_INSTRUCTION, size/4);
}
