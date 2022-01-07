
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t BPF_REG_1 ;
 size_t BPF_REG_FP ;
 int BUILD_BUG_ON (int) ;
 int EMIT1 (int) ;
 int EMIT2 (int,int) ;
 int EMIT2_off32 (int,int,int ) ;
 int EMIT3 (int,int,scalar_t__) ;
 int IA32_EAX ;
 int IA32_EBP ;
 int IA32_EBX ;
 int PROLOGUE_SIZE ;
 scalar_t__ SCRATCH_SIZE ;
 int STACK_SIZE ;
 scalar_t__ STACK_VAR (int const) ;
 size_t TCALL_CNT ;
 int add_1reg (int,int ) ;
 int add_2reg (int,int ,int ) ;
 int ** bpf2ia32 ;

__attribute__((used)) static void emit_prologue(u8 **pprog, u32 stack_depth)
{
 u8 *prog = *pprog;
 int cnt = 0;
 const u8 *r1 = bpf2ia32[BPF_REG_1];
 const u8 fplo = bpf2ia32[BPF_REG_FP][0];
 const u8 fphi = bpf2ia32[BPF_REG_FP][1];
 const u8 *tcc = bpf2ia32[TCALL_CNT];


 EMIT1(0x55);

 EMIT2(0x89, 0xE5);

 EMIT1(0x57);

 EMIT1(0x56);

 EMIT1(0x53);


 EMIT2_off32(0x81, 0xEC, STACK_SIZE);

 EMIT3(0x83, add_1reg(0xE8, IA32_EBP), SCRATCH_SIZE + 12);

 EMIT2(0x31, add_2reg(0xC0, IA32_EBX, IA32_EBX));


 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EBP), STACK_VAR(fplo));
 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EBX), STACK_VAR(fphi));



 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EAX), STACK_VAR(r1[0]));
 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EBX), STACK_VAR(r1[1]));


 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EBX), STACK_VAR(tcc[0]));
 EMIT3(0x89, add_2reg(0x40, IA32_EBP, IA32_EBX), STACK_VAR(tcc[1]));

 BUILD_BUG_ON(cnt != PROLOGUE_SIZE);
 *pprog = prog;
}
