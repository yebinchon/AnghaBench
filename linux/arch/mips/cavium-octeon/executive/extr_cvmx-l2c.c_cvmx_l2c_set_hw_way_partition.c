
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_L2C_SPAR4 ;
 int CVMX_L2C_WPAR_IOBX (int ) ;
 int OCTEON_CN63XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_l2c_get_num_assoc () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

int cvmx_l2c_set_hw_way_partition(uint32_t mask)
{
 uint32_t valid_mask;

 valid_mask = (0x1 << cvmx_l2c_get_num_assoc()) - 1;
 mask &= valid_mask;


 if (mask == valid_mask && !OCTEON_IS_MODEL(OCTEON_CN63XX))
  return -1;

 if (OCTEON_IS_MODEL(OCTEON_CN63XX))
  cvmx_write_csr(CVMX_L2C_WPAR_IOBX(0), mask);
 else
  cvmx_write_csr(CVMX_L2C_SPAR4,
          (cvmx_read_csr(CVMX_L2C_SPAR4) & ~0xFF) | mask);
 return 0;
}
