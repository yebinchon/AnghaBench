
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dummy; } ;


 int GPIO_MODE_REGS (int) ;
 int GPIO_MODE_S ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static void pinmux_set_mux_7531(struct gsw_mt753x *gsw, u32 pin, u32 mode)
{
 u32 val;

 val = mt753x_reg_read(gsw, GPIO_MODE_REGS(pin));
 val &= ~(0xf << (pin & 7) * GPIO_MODE_S);
 val |= mode << (pin & 7) * GPIO_MODE_S;
 mt753x_reg_write(gsw, GPIO_MODE_REGS(pin), val);
}
