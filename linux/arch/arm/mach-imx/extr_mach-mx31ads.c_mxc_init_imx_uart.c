
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int imx31_add_imx_uart0 (int *) ;
 int mxc_iomux_setup_multiple_pins (int ,int ,char*) ;
 int uart_pdata ;
 int uart_pins ;

__attribute__((used)) static inline void mxc_init_imx_uart(void)
{
 mxc_iomux_setup_multiple_pins(uart_pins, ARRAY_SIZE(uart_pins), "uart-0");
 imx31_add_imx_uart0(&uart_pdata);
}
