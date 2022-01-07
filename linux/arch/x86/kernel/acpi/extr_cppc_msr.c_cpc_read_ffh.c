
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpc_reg {int bit_offset; scalar_t__ bit_width; int address; } ;


 int GENMASK_ULL (scalar_t__,int) ;
 int rdmsrl_safe_on_cpu (int,int ,int*) ;

int cpc_read_ffh(int cpunum, struct cpc_reg *reg, u64 *val)
{
 int err;

 err = rdmsrl_safe_on_cpu(cpunum, reg->address, val);
 if (!err) {
  u64 mask = GENMASK_ULL(reg->bit_offset + reg->bit_width - 1,
           reg->bit_offset);

  *val &= mask;
  *val >>= reg->bit_offset;
 }
 return err;
}
