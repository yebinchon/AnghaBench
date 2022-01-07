
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_SLC_CTRL ;
 int OP_FLUSH_N_INV ;
 int SLC_CTRL_DIS ;
 int read_aux_reg (int const) ;
 int slc_entire_op (int ) ;
 int write_aux_reg (int const,int) ;

__attribute__((used)) static inline void arc_slc_disable(void)
{
 const int r = ARC_REG_SLC_CTRL;

 slc_entire_op(OP_FLUSH_N_INV);
 write_aux_reg(r, read_aux_reg(r) | SLC_CTRL_DIS);
}
