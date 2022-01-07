
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PRBAR ;
 int read_sysreg (int ) ;

__attribute__((used)) static inline u32 prbar_read(void)
{
 return read_sysreg(PRBAR);
}
