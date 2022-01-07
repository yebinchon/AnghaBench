
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HPET_COUNTER ;
 int hpet_write (scalar_t__,int ) ;

__attribute__((used)) static void hpet_reset_counter(void)
{
 hpet_write(HPET_COUNTER, 0);
 hpet_write(HPET_COUNTER + 4, 0);
}
