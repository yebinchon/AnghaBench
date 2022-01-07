
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpc_reg {int address; int bit_offset; scalar_t__ bit_width; } ;


 int GENMASK_ULL (scalar_t__,int ) ;
 int rdmsrl_safe_on_cpu (int,int ,int *) ;
 int wrmsrl_safe_on_cpu (int,int ,int ) ;

int cpc_write_ffh(int cpunum, struct cpc_reg *reg, u64 val)
{
 u64 rd_val;
 int err;

 err = rdmsrl_safe_on_cpu(cpunum, reg->address, &rd_val);
 if (!err) {
  u64 mask = GENMASK_ULL(reg->bit_offset + reg->bit_width - 1,
           reg->bit_offset);

  val <<= reg->bit_offset;
  val &= mask;
  rd_val &= ~mask;
  rd_val |= val;
  err = wrmsrl_safe_on_cpu(cpunum, reg->address, rd_val);
 }
 return err;
}
