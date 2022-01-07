
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable_unprepare (void*) ;

__attribute__((used)) static void meson_rng_clk_disable(void *data)
{
 clk_disable_unprepare(data);
}
