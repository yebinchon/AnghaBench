
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_jit {int dummy; } ;


 int STK_OFF_R6 ;
 int _EMIT6 (int,int) ;
 int _EMIT6_DISP (int,int,int) ;

__attribute__((used)) static void save_regs(struct bpf_jit *jit, u32 rs, u32 re)
{
 u32 off = STK_OFF_R6 + (rs - 6) * 8;

 if (rs == re)

  _EMIT6(0xe300f000 | rs << 20 | off, 0x0024);
 else

  _EMIT6_DISP(0xeb00f000 | rs << 20 | re << 16, 0x0024, off);
}
