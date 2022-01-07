
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ESCSR_CLEAR ;
 int IECSR_CLEAR ;
 scalar_t__ RIO_ESCSR ;
 scalar_t__ RIO_LTLEDCSR ;
 scalar_t__ RIO_PORT1_EDCSR ;
 scalar_t__ RIO_PORT1_IECSR ;
 scalar_t__ RIO_PORT2_EDCSR ;
 scalar_t__ RIO_PORT2_ESCSR ;
 scalar_t__ RIO_PORT2_IECSR ;
 int out_be32 (int *,int ) ;
 scalar_t__ rio_regs_win ;

void fsl_rio_port_error_handler(int offset)
{

 out_be32((u32 *)(rio_regs_win + RIO_LTLEDCSR), 0);

 if (offset == 0) {
  out_be32((u32 *)(rio_regs_win + RIO_PORT1_EDCSR), 0);
  out_be32((u32 *)(rio_regs_win + RIO_PORT1_IECSR), IECSR_CLEAR);
  out_be32((u32 *)(rio_regs_win + RIO_ESCSR), ESCSR_CLEAR);
 } else {
  out_be32((u32 *)(rio_regs_win + RIO_PORT2_EDCSR), 0);
  out_be32((u32 *)(rio_regs_win + RIO_PORT2_IECSR), IECSR_CLEAR);
  out_be32((u32 *)(rio_regs_win + RIO_PORT2_ESCSR), ESCSR_CLEAR);
 }
}
