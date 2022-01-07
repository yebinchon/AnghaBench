
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct debug_reg {int dbcr0; void* dac2; void* dac1; } ;


 int DBCR0_DAC1R ;
 int DBCR0_DAC1W ;
 int DBCR0_DAC2R ;
 int DBCR0_DAC2W ;
 int DBCR0_IDM ;
 int EINVAL ;
 int KVMPPC_DEBUG_WATCH_READ ;
 int KVMPPC_DEBUG_WATCH_WRITE ;

__attribute__((used)) static int kvmppc_booke_add_watchpoint(struct debug_reg *dbg_reg, uint64_t addr,
           int type, int index)
{
 switch (index) {
 case 0:
  if (type & KVMPPC_DEBUG_WATCH_READ)
   dbg_reg->dbcr0 |= DBCR0_DAC1R;
  if (type & KVMPPC_DEBUG_WATCH_WRITE)
   dbg_reg->dbcr0 |= DBCR0_DAC1W;
  dbg_reg->dac1 = addr;
  break;
 case 1:
  if (type & KVMPPC_DEBUG_WATCH_READ)
   dbg_reg->dbcr0 |= DBCR0_DAC2R;
  if (type & KVMPPC_DEBUG_WATCH_WRITE)
   dbg_reg->dbcr0 |= DBCR0_DAC2W;
  dbg_reg->dac2 = addr;
  break;
 default:
  return -EINVAL;
 }

 dbg_reg->dbcr0 |= DBCR0_IDM;
 return 0;
}
