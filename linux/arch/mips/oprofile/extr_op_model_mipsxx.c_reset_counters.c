
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w_c0_perfcntr0 (int ) ;
 int w_c0_perfcntr1 (int ) ;
 int w_c0_perfcntr2 (int ) ;
 int w_c0_perfcntr3 (int ) ;
 int w_c0_perfctrl0 (int ) ;
 int w_c0_perfctrl1 (int ) ;
 int w_c0_perfctrl2 (int ) ;
 int w_c0_perfctrl3 (int ) ;

__attribute__((used)) static void reset_counters(void *arg)
{
 int counters = (int)(long)arg;
 switch (counters) {
 case 4:
  w_c0_perfctrl3(0);
  w_c0_perfcntr3(0);

 case 3:
  w_c0_perfctrl2(0);
  w_c0_perfcntr2(0);

 case 2:
  w_c0_perfctrl1(0);
  w_c0_perfcntr1(0);

 case 1:
  w_c0_perfctrl0(0);
  w_c0_perfcntr0(0);
 }
}
