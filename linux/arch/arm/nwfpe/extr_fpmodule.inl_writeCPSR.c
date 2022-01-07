
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_CPSR ;
 int writeRegister (int ,unsigned long const) ;

__attribute__((used)) static inline void writeCPSR(const unsigned long val)
{
 writeRegister(REG_CPSR, val);
}
