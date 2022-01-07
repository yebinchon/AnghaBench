
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write_counter ) (int,int ) ;} ;


 TYPE_1__ mipspmu ;
 int mipsxx_pmu_write_control (int,int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;

__attribute__((used)) static void reset_counters(void *arg)
{
 int counters = (int)(long)arg;
 switch (counters) {
 case 4:
  mipsxx_pmu_write_control(3, 0);
  mipspmu.write_counter(3, 0);

 case 3:
  mipsxx_pmu_write_control(2, 0);
  mipspmu.write_counter(2, 0);

 case 2:
  mipsxx_pmu_write_control(1, 0);
  mipspmu.write_counter(1, 0);

 case 1:
  mipsxx_pmu_write_control(0, 0);
  mipspmu.write_counter(0, 0);

 }
}
