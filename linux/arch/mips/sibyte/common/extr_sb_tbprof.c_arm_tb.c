
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tb_armed; } ;


 int A_BCM1480_SCD_PERF_CNT_CFG0 ;
 int A_BCM1480_SCD_PERF_CNT_CFG1 ;
 int A_SCD_PERF_CNT_1 ;
 int A_SCD_PERF_CNT_CFG ;
 int A_SCD_TRACE_CFG ;
 int IOADDR (int ) ;
 int M_SCD_TRACE_CFG_FORCECNT ;
 int M_SCD_TRACE_CFG_FREEZE_FULL ;
 int M_SCD_TRACE_CFG_RESET ;
 int M_SPC_CFG_CLEAR ;
 int M_SPC_CFG_ENABLE ;
 int M_SPC_CFG_SRC1 ;
 int V_SPC_CFG_SRC1 (int) ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;
 TYPE_1__ sbp ;
 int tb_period ;

__attribute__((used)) static void arm_tb(void)
{
 u64 scdperfcnt;
 u64 next = (1ULL << 40) - tb_period;
 u64 tb_options = M_SCD_TRACE_CFG_FREEZE_FULL;





 __raw_writeq(0, IOADDR(A_SCD_PERF_CNT_1));
 scdperfcnt = __raw_readq(IOADDR(A_SCD_PERF_CNT_CFG));
 __raw_writeq((scdperfcnt & ~M_SPC_CFG_SRC1) |

       M_SPC_CFG_ENABLE |
       M_SPC_CFG_CLEAR |
       V_SPC_CFG_SRC1(1),
       IOADDR(A_SCD_PERF_CNT_CFG));

 __raw_writeq(next, IOADDR(A_SCD_PERF_CNT_1));

 __raw_writeq(M_SCD_TRACE_CFG_RESET, IOADDR(A_SCD_TRACE_CFG));




 __raw_writeq(tb_options, IOADDR(A_SCD_TRACE_CFG));
 sbp.tb_armed = 1;
}
