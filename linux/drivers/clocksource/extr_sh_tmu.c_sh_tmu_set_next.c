
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_channel {int dummy; } ;


 int TCNT ;
 int TCOR ;
 int TCR ;
 unsigned long TCR_TPSC_CLK4 ;
 unsigned long TCR_UNIE ;
 int sh_tmu_read (struct sh_tmu_channel*,int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_channel*,int) ;
 int sh_tmu_write (struct sh_tmu_channel*,int ,unsigned long) ;

__attribute__((used)) static void sh_tmu_set_next(struct sh_tmu_channel *ch, unsigned long delta,
       int periodic)
{

 sh_tmu_start_stop_ch(ch, 0);


 sh_tmu_read(ch, TCR);


 sh_tmu_write(ch, TCR, TCR_UNIE | TCR_TPSC_CLK4);


 if (periodic)
  sh_tmu_write(ch, TCOR, delta);
 else
  sh_tmu_write(ch, TCOR, 0xffffffff);

 sh_tmu_write(ch, TCNT, delta);


 sh_tmu_start_stop_ch(ch, 1);
}
