
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int to_div(unsigned int cyc_tns, unsigned int clk_tns)
{
 return cyc_tns ? DIV_ROUND_UP(cyc_tns, clk_tns) : 0;
}
