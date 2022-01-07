
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_CLOSEST (int,int ) ;
 int phase_step (unsigned int) ;

__attribute__((used)) static unsigned int meson_clk_degrees_to_val(int degrees, unsigned int width)
{
 unsigned int val = DIV_ROUND_CLOSEST(degrees, phase_step(width));





 return val % (1 << width);
}
