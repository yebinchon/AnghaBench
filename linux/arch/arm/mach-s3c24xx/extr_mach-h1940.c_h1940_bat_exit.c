
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H1940_LATCH_SM803_ENABLE ;
 int gpio_free (int ) ;

__attribute__((used)) static void h1940_bat_exit(void)
{
 gpio_free(H1940_LATCH_SM803_ENABLE);
}
