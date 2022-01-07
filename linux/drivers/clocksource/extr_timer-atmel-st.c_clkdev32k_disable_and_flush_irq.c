
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_ALMS ;
 int AT91_ST_IDR ;
 int AT91_ST_PITS ;
 int AT91_ST_SR ;
 int last_crtr ;
 int read_CRTR () ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_st ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void clkdev32k_disable_and_flush_irq(void)
{
 unsigned int val;


 regmap_write(regmap_st, AT91_ST_IDR, AT91_ST_PITS | AT91_ST_ALMS);
 regmap_read(regmap_st, AT91_ST_SR, &val);
 last_crtr = read_CRTR();
}
