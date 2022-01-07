
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* data; void* addr; } ;
union cvmx_pescx_cfg_wr {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {void* data; void* addr; } ;
union cvmx_pemx_cfg_wr {scalar_t__ u64; TYPE_1__ s; } ;
typedef void* uint32_t ;


 int CVMX_PEMX_CFG_WR (int) ;
 int CVMX_PESCX_CFG_WR (int) ;
 int OCTEON_FEATURE_NPEI ;
 int cvmx_write_csr (int ,scalar_t__) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static void cvmx_pcie_cfgx_write(int pcie_port, uint32_t cfg_offset,
     uint32_t val)
{
 if (octeon_has_feature(OCTEON_FEATURE_NPEI)) {
  union cvmx_pescx_cfg_wr pescx_cfg_wr;
  pescx_cfg_wr.u64 = 0;
  pescx_cfg_wr.s.addr = cfg_offset;
  pescx_cfg_wr.s.data = val;
  cvmx_write_csr(CVMX_PESCX_CFG_WR(pcie_port), pescx_cfg_wr.u64);
 } else {
  union cvmx_pemx_cfg_wr pemx_cfg_wr;
  pemx_cfg_wr.u64 = 0;
  pemx_cfg_wr.s.addr = cfg_offset;
  pemx_cfg_wr.s.data = val;
  cvmx_write_csr(CVMX_PEMX_CFG_WR(pcie_port), pemx_cfg_wr.u64);
 }
}
