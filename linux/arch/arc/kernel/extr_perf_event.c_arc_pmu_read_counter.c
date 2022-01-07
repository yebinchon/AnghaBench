
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int ARC_REG_PCT_CONTROL ;
 int ARC_REG_PCT_CONTROL_SN ;
 int ARC_REG_PCT_INDEX ;
 int ARC_REG_PCT_SNAPH ;
 int ARC_REG_PCT_SNAPL ;
 int read_aux_reg (int ) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static u64 arc_pmu_read_counter(int idx)
{
 u32 tmp;
 u64 result;





 write_aux_reg(ARC_REG_PCT_INDEX, idx);
 tmp = read_aux_reg(ARC_REG_PCT_CONTROL);
 write_aux_reg(ARC_REG_PCT_CONTROL, tmp | ARC_REG_PCT_CONTROL_SN);
 result = (u64) (read_aux_reg(ARC_REG_PCT_SNAPH)) << 32;
 result |= read_aux_reg(ARC_REG_PCT_SNAPL);

 return result;
}
