
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BUILD_BUG_ON (int) ;
 int EMIT1 (int) ;
 int EMIT2 (int,int) ;
 int EMIT3 (int,int,int) ;
 int EMIT3_off32 (int,int,int,int ) ;
 int PROLOGUE_SIZE ;
 int round_up (int ,int) ;

__attribute__((used)) static void emit_prologue(u8 **pprog, u32 stack_depth, bool ebpf_from_cbpf)
{
 u8 *prog = *pprog;
 int cnt = 0;

 EMIT1(0x55);
 EMIT3(0x48, 0x89, 0xE5);

 EMIT3_off32(0x48, 0x81, 0xEC, round_up(stack_depth, 8));
 EMIT1(0x53);
 EMIT2(0x41, 0x55);
 EMIT2(0x41, 0x56);
 EMIT2(0x41, 0x57);
 if (!ebpf_from_cbpf) {

  EMIT2(0x6a, 0x00);
  BUILD_BUG_ON(cnt != PROLOGUE_SIZE);
 }
 *pprog = prog;
}
