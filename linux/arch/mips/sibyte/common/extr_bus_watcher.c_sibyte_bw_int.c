
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bw_stats_struct {unsigned long l2_err; unsigned long memio_err; int bus_error; int mem_bad_d; int mem_cor_d; int l2_bad_t; int l2_cor_t; int l2_bad_d; int l2_cor_d; scalar_t__ status_printed; void* status; } ;
typedef int irqreturn_t ;


 int A_BUS_L2_ERRORS ;
 int A_BUS_MEM_IO_ERRORS ;
 int A_SCD_BUS_ERR_STATUS ;
 int A_SCD_TRACE_CFG ;
 int A_SCD_TRACE_READ ;
 scalar_t__ G_SCD_L2ECC_BAD_D (unsigned long) ;
 scalar_t__ G_SCD_L2ECC_BAD_T (unsigned long) ;
 scalar_t__ G_SCD_L2ECC_CORR_D (unsigned long) ;
 scalar_t__ G_SCD_L2ECC_CORR_T (unsigned long) ;
 scalar_t__ G_SCD_MEM_BUSERR (unsigned long) ;
 scalar_t__ G_SCD_MEM_ECC_BAD (unsigned long) ;
 scalar_t__ G_SCD_MEM_ECC_CORR (unsigned long) ;
 int IOADDR (int ) ;
 int IRQ_HANDLED ;
 int M_SCD_TRACE_CFG_FREEZE ;
 int M_SCD_TRACE_CFG_RESET ;
 int M_SCD_TRACE_CFG_START ;
 int M_SCD_TRACE_CFG_START_READ ;
 scalar_t__ __raw_readq (int ) ;
 void* csr_in32 (int ) ;
 int csr_out32 (int ,int ) ;
 int printk (char*,long long) ;

__attribute__((used)) static irqreturn_t sibyte_bw_int(int irq, void *data)
{
 struct bw_stats_struct *stats = data;
 unsigned long cntr;
 stats->status = csr_in32(IOADDR(A_SCD_BUS_ERR_STATUS));
 stats->status_printed = 0;

 stats->l2_err = cntr = csr_in32(IOADDR(A_BUS_L2_ERRORS));
 stats->l2_cor_d += G_SCD_L2ECC_CORR_D(cntr);
 stats->l2_bad_d += G_SCD_L2ECC_BAD_D(cntr);
 stats->l2_cor_t += G_SCD_L2ECC_CORR_T(cntr);
 stats->l2_bad_t += G_SCD_L2ECC_BAD_T(cntr);
 csr_out32(0, IOADDR(A_BUS_L2_ERRORS));

 stats->memio_err = cntr = csr_in32(IOADDR(A_BUS_MEM_IO_ERRORS));
 stats->mem_cor_d += G_SCD_MEM_ECC_CORR(cntr);
 stats->mem_bad_d += G_SCD_MEM_ECC_BAD(cntr);
 stats->bus_error += G_SCD_MEM_BUSERR(cntr);
 csr_out32(0, IOADDR(A_BUS_MEM_IO_ERRORS));

 return IRQ_HANDLED;
}
