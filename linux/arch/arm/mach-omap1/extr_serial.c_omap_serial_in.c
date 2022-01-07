
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_serial8250_port {int regshift; scalar_t__ membase; } ;


 scalar_t__ __raw_readb (scalar_t__) ;

__attribute__((used)) static inline unsigned int omap_serial_in(struct plat_serial8250_port *up,
       int offset)
{
 offset <<= up->regshift;
 return (unsigned int)__raw_readb(up->membase + offset);
}
