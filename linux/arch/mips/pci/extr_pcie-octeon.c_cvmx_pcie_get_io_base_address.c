
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io; int did; int subdid; int es; int port; scalar_t__ upper; } ;
union cvmx_pcie_address {scalar_t__ u64; TYPE_1__ io; } ;
typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline uint64_t cvmx_pcie_get_io_base_address(int pcie_port)
{
 union cvmx_pcie_address pcie_addr;
 pcie_addr.u64 = 0;
 pcie_addr.io.upper = 0;
 pcie_addr.io.io = 1;
 pcie_addr.io.did = 3;
 pcie_addr.io.subdid = 2;
 pcie_addr.io.es = 1;
 pcie_addr.io.port = pcie_port;
 return pcie_addr.u64;
}
