
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int phase_step (unsigned int) ;

__attribute__((used)) static int meson_clk_degrees_from_val(unsigned int val, unsigned int width)
{
 return phase_step(width) * val;
}
