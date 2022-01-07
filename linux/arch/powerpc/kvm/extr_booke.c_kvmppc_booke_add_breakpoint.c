
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct debug_reg {int dbcr0; void* iac4; void* iac3; void* iac2; void* iac1; } ;


 int DBCR0_IAC1 ;
 int DBCR0_IAC2 ;
 int DBCR0_IAC3 ;
 int DBCR0_IAC4 ;
 int DBCR0_IDM ;
 int EINVAL ;

__attribute__((used)) static int kvmppc_booke_add_breakpoint(struct debug_reg *dbg_reg,
           uint64_t addr, int index)
{
 switch (index) {
 case 0:
  dbg_reg->dbcr0 |= DBCR0_IAC1;
  dbg_reg->iac1 = addr;
  break;
 case 1:
  dbg_reg->dbcr0 |= DBCR0_IAC2;
  dbg_reg->iac2 = addr;
  break;
 default:
  return -EINVAL;
 }

 dbg_reg->dbcr0 |= DBCR0_IDM;
 return 0;
}
