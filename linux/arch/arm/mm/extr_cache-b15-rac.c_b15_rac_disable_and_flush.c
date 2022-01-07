
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __b15_rac_disable () ;
 int __b15_rac_flush () ;

__attribute__((used)) static inline u32 b15_rac_disable_and_flush(void)
{
 u32 reg;

 reg = __b15_rac_disable();
 __b15_rac_flush();
 return reg;
}
