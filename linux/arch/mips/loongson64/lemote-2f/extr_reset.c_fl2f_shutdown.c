
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIVIL_LBAR_GPIO ;
 int DIVIL_MSR_REG (int ) ;
 scalar_t__ GPIOL_OUT_EN ;
 scalar_t__ GPIOL_OUT_VAL ;
 int _rdmsr (int ,int*,int*) ;
 int inl (scalar_t__) ;
 int mmiowb () ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void fl2f_shutdown(void)
{
 u32 hi, lo, val;
 int gpio_base;


 _rdmsr(DIVIL_MSR_REG(DIVIL_LBAR_GPIO), &hi, &lo);
 gpio_base = lo & 0xff00;


 val = inl(gpio_base + GPIOL_OUT_EN);
 val &= ~(1 << (16 + 13));
 val |= (1 << 13);
 outl(val, gpio_base + GPIOL_OUT_EN);
 mmiowb();

 val = inl(gpio_base + GPIOL_OUT_VAL) & ~(1 << (13));
 val |= (1 << (16 + 13));
 outl(val, gpio_base + GPIOL_OUT_VAL);
 mmiowb();
}
