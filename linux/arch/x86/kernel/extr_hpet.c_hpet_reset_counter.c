
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HPET_COUNTER ;
 int hpet_writel (int ,scalar_t__) ;

__attribute__((used)) static void hpet_reset_counter(void)
{
 hpet_writel(0, HPET_COUNTER);
 hpet_writel(0, HPET_COUNTER + 4);
}
