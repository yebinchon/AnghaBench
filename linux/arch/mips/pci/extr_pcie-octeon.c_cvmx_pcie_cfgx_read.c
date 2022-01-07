
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* data; void* addr; } ;
union cvmx_pescx_cfg_rd {TYPE_2__ s; void* u64; } ;
struct TYPE_3__ {void* data; void* addr; } ;
union cvmx_pemx_cfg_rd {TYPE_1__ s; void* u64; } ;
typedef void* uint32_t ;


 int CVMX_PEMX_CFG_RD (int) ;
 int CVMX_PESCX_CFG_RD (int) ;
 int OCTEON_FEATURE_NPEI ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static uint32_t cvmx_pcie_cfgx_read(int pcie_port, uint32_t cfg_offset)
{
 if (octeon_has_feature(OCTEON_FEATURE_NPEI)) {
  union cvmx_pescx_cfg_rd pescx_cfg_rd;
  pescx_cfg_rd.u64 = 0;
  pescx_cfg_rd.s.addr = cfg_offset;
  cvmx_write_csr(CVMX_PESCX_CFG_RD(pcie_port), pescx_cfg_rd.u64);
  pescx_cfg_rd.u64 = cvmx_read_csr(CVMX_PESCX_CFG_RD(pcie_port));
  return pescx_cfg_rd.s.data;
 } else {
  union cvmx_pemx_cfg_rd pemx_cfg_rd;
  pemx_cfg_rd.u64 = 0;
  pemx_cfg_rd.s.addr = cfg_offset;
  cvmx_write_csr(CVMX_PEMX_CFG_RD(pcie_port), pemx_cfg_rd.u64);
  pemx_cfg_rd.u64 = cvmx_read_csr(CVMX_PEMX_CFG_RD(pcie_port));
  return pemx_cfg_rd.s.data;
 }
}
