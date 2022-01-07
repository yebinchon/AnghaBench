
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTC_REG_IRQ_DISABLE ;
 int INTC_WRITE (int ,int) ;

__attribute__((used)) static void intc_init(void)
{
 INTC_WRITE(INTC_REG_IRQ_DISABLE, 0xFFFFFFFF);
}
