
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_L2C_SPAR0 ;
 int CVMX_L2C_SPAR1 ;
 int CVMX_L2C_SPAR2 ;
 int CVMX_L2C_SPAR3 ;
 int CVMX_L2C_WPAR_PPX (int) ;
 int OCTEON_CN63XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_l2c_get_num_assoc () ;
 int cvmx_octeon_num_cores () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

int cvmx_l2c_set_core_way_partition(uint32_t core, uint32_t mask)
{
 uint32_t field;
 uint32_t valid_mask;

 valid_mask = (0x1 << cvmx_l2c_get_num_assoc()) - 1;

 mask &= valid_mask;


 if (mask == valid_mask && !OCTEON_IS_MODEL(OCTEON_CN63XX))
  return -1;


 if (core >= cvmx_octeon_num_cores())
  return -1;

 if (OCTEON_IS_MODEL(OCTEON_CN63XX)) {
  cvmx_write_csr(CVMX_L2C_WPAR_PPX(core), mask);
  return 0;
 }





 field = (core & 0x3) * 8;






 switch (core & 0xC) {
 case 0x0:
  cvmx_write_csr(CVMX_L2C_SPAR0,
          (cvmx_read_csr(CVMX_L2C_SPAR0) & ~(0xFF << field)) |
          mask << field);
  break;
 case 0x4:
  cvmx_write_csr(CVMX_L2C_SPAR1,
          (cvmx_read_csr(CVMX_L2C_SPAR1) & ~(0xFF << field)) |
          mask << field);
  break;
 case 0x8:
  cvmx_write_csr(CVMX_L2C_SPAR2,
          (cvmx_read_csr(CVMX_L2C_SPAR2) & ~(0xFF << field)) |
          mask << field);
  break;
 case 0xC:
  cvmx_write_csr(CVMX_L2C_SPAR3,
          (cvmx_read_csr(CVMX_L2C_SPAR3) & ~(0xFF << field)) |
          mask << field);
  break;
 }
 return 0;
}
