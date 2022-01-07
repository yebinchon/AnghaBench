
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int amb_dev ;


 int DBG_REGS ;
 int PRINTD (int,char*) ;
 int debug ;
 int rd_mem (int const*,size_t) ;

__attribute__((used)) static inline void dump_registers (const amb_dev * dev) {
  (void) dev;

  return;
}
