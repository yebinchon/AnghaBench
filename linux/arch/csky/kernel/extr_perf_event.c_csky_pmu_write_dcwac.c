
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int cpwgr (char*,int ) ;

__attribute__((used)) static void csky_pmu_write_dcwac(uint64_t val)
{
 cpwgr("<0, 0x2c>", (uint32_t) val);
 cpwgr("<0, 0x2d>", (uint32_t) (val >> 32));
}
