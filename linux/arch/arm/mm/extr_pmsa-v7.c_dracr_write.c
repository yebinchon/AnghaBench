
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRACR ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static inline void dracr_write(u32 v)
{
 write_sysreg(v, DRACR);
}
