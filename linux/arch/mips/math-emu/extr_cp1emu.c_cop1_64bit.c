
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CONFIG_32BIT ;
 int CONFIG_64BIT ;
 int CONFIG_MIPS32_O32 ;
 int CONFIG_MIPS_O32_FP64_SUPPORT ;
 scalar_t__ IS_ENABLED (int ) ;
 int TIF_32BIT_FPREGS ;
 int test_thread_flag (int ) ;

__attribute__((used)) static inline int cop1_64bit(struct pt_regs *xcp)
{
 if (IS_ENABLED(CONFIG_64BIT) && !IS_ENABLED(CONFIG_MIPS32_O32))
  return 1;
 else if (IS_ENABLED(CONFIG_32BIT) &&
   !IS_ENABLED(CONFIG_MIPS_O32_FP64_SUPPORT))
  return 0;

 return !test_thread_flag(TIF_32BIT_FPREGS);
}
