
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmu {int dummy; } ;


 int ARC_REG_PCT_CONTROL ;
 int read_aux_reg (int ) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static void arc_pmu_enable(struct pmu *pmu)
{
 u32 tmp;
 tmp = read_aux_reg(ARC_REG_PCT_CONTROL);
 write_aux_reg(ARC_REG_PCT_CONTROL, (tmp & 0xffff0000) | 0x1);
}
