
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_SLC_CTRL ;
 int SLC_CTRL_DIS ;
 int read_aux_reg (int const) ;
 int write_aux_reg (int const,int) ;

__attribute__((used)) static inline void arc_slc_enable(void)
{
 const int r = ARC_REG_SLC_CTRL;

 write_aux_reg(r, read_aux_reg(r) & ~SLC_CTRL_DIS);
}
