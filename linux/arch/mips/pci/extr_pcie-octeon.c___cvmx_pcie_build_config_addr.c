
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pbnum; } ;
union cvmx_pciercx_cfg006 {TYPE_1__ s; int u32; } ;
struct TYPE_4__ {int upper; int io; int did; int subdid; int es; int port; int ty; int bus; int dev; int func; int reg; } ;
union cvmx_pcie_address {scalar_t__ u64; TYPE_2__ config; } ;
typedef scalar_t__ uint64_t ;


 int CVMX_PCIERCX_CFG006 (int) ;
 int cvmx_pcie_cfgx_read (int,int ) ;

__attribute__((used)) static inline uint64_t __cvmx_pcie_build_config_addr(int pcie_port, int bus,
           int dev, int fn, int reg)
{
 union cvmx_pcie_address pcie_addr;
 union cvmx_pciercx_cfg006 pciercx_cfg006;

 pciercx_cfg006.u32 =
     cvmx_pcie_cfgx_read(pcie_port, CVMX_PCIERCX_CFG006(pcie_port));
 if ((bus <= pciercx_cfg006.s.pbnum) && (dev != 0))
  return 0;

 pcie_addr.u64 = 0;
 pcie_addr.config.upper = 2;
 pcie_addr.config.io = 1;
 pcie_addr.config.did = 3;
 pcie_addr.config.subdid = 1;
 pcie_addr.config.es = 1;
 pcie_addr.config.port = pcie_port;
 pcie_addr.config.ty = (bus > pciercx_cfg006.s.pbnum);
 pcie_addr.config.bus = bus;
 pcie_addr.config.dev = dev;
 pcie_addr.config.func = fn;
 pcie_addr.config.reg = reg;
 return pcie_addr.u64;
}
