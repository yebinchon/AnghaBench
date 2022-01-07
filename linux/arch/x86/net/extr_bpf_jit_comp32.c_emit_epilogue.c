
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t BPF_REG_0 ;
 int EMIT1 (int) ;
 int EMIT3 (int,int ,int) ;
 int IA32_EAX ;
 int IA32_EBP ;
 int IA32_EBX ;
 int IA32_EDI ;
 int IA32_EDX ;
 int IA32_ESI ;
 int SCRATCH_SIZE ;
 int STACK_VAR (int const) ;
 int add_1reg (int,int ) ;
 int add_2reg (int,int ,int ) ;
 int ** bpf2ia32 ;

__attribute__((used)) static void emit_epilogue(u8 **pprog, u32 stack_depth)
{
 u8 *prog = *pprog;
 const u8 *r0 = bpf2ia32[BPF_REG_0];
 int cnt = 0;


 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(r0[0]));

 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EDX), STACK_VAR(r0[1]));


 EMIT3(0x83, add_1reg(0xC0, IA32_EBP), SCRATCH_SIZE + 12);


 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EBX), -12);

 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_ESI), -8);

 EMIT3(0x8B, add_2reg(0x40, IA32_EBP, IA32_EDI), -4);

 EMIT1(0xC9);
 EMIT1(0xC3);
 *pprog = prog;
}
