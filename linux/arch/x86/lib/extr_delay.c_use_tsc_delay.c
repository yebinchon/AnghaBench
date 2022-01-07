
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ delay_fn ;
 scalar_t__ delay_loop ;
 scalar_t__ delay_tsc ;

void use_tsc_delay(void)
{
 if (delay_fn == delay_loop)
  delay_fn = delay_tsc;
}
