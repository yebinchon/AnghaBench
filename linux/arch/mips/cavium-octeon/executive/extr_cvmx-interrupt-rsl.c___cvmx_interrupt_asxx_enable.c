
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txpsh; int txpop; int ovrflw; } ;
union cvmx_asxx_int_en {int u64; TYPE_1__ s; } ;


 int CVMX_ASXX_INT_EN (int) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void __cvmx_interrupt_asxx_enable(int block)
{
 int mask;
 union cvmx_asxx_int_en csr;





 if (OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX))
  mask = 0xf;
 else
  mask = 0x7;


 csr.u64 = cvmx_read_csr(CVMX_ASXX_INT_EN(block));
 csr.s.txpsh = mask;
 csr.s.txpop = mask;
 csr.s.ovrflw = mask;
 cvmx_write_csr(CVMX_ASXX_INT_EN(block), csr.u64);
}
