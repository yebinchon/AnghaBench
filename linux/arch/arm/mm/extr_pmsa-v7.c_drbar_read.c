
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRBAR ;
 int read_sysreg (int ) ;

__attribute__((used)) static inline u32 drbar_read(void)
{
 return read_sysreg(DRBAR);
}
