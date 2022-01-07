
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pit_data {int cycle; int base; } ;


 int AT91_PIT_MR ;
 int AT91_PIT_PITEN ;
 int AT91_PIT_PIVR ;
 scalar_t__ PIT_CPIV (int ) ;
 int cpu_relax () ;
 int pit_read (int ,int ) ;
 int pit_write (int ,int ,int) ;

__attribute__((used)) static void at91sam926x_pit_reset(struct pit_data *data)
{

 pit_write(data->base, AT91_PIT_MR, 0);


 while (PIT_CPIV(pit_read(data->base, AT91_PIT_PIVR)) != 0)
  cpu_relax();


 pit_write(data->base, AT91_PIT_MR,
    (data->cycle - 1) | AT91_PIT_PITEN);
}
