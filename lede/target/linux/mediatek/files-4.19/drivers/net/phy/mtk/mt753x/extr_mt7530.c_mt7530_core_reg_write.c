
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mmd_write ) (struct gsw_mt753x*,int ,int,int ,int ) ;} ;


 int stub1 (struct gsw_mt753x*,int ,int,int ,int ) ;

__attribute__((used)) static void mt7530_core_reg_write(struct gsw_mt753x *gsw, u32 reg, u32 val)
{
 gsw->mmd_write(gsw, 0, 0x1f, reg, val);
}
