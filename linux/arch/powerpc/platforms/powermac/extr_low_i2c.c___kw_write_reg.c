
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmac_i2c_host_kw {unsigned int bsteps; scalar_t__ base; } ;
typedef scalar_t__ reg_t ;


 int __kw_read_reg (struct pmac_i2c_host_kw*,int ) ;
 int reg_subaddr ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void __kw_write_reg(struct pmac_i2c_host_kw *host,
      reg_t reg, u8 val)
{
 writeb(val, host->base + (((unsigned)reg) << host->bsteps));
 (void)__kw_read_reg(host, reg_subaddr);
}
