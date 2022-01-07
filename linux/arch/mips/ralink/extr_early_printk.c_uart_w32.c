
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,unsigned int) ;
 unsigned int uart_membase ;

__attribute__((used)) static inline void uart_w32(u32 val, unsigned reg)
{
 __raw_writel(val, uart_membase + reg);
}
