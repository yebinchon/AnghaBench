
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 int AT91_ST_RTAR ;
 int AT91_ST_SR ;
 int BUG_ON (int) ;
 unsigned long read_CRTR () ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_st ;
 int regmap_write (int ,int ,unsigned long) ;

__attribute__((used)) static int
clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
{
 u32 alm;
 int status = 0;
 unsigned int val;

 BUG_ON(delta < 2);
 alm = read_CRTR();


 regmap_write(regmap_st, AT91_ST_RTAR, alm);
 regmap_read(regmap_st, AT91_ST_SR, &val);


 alm += delta;
 regmap_write(regmap_st, AT91_ST_RTAR, alm);

 return status;
}
