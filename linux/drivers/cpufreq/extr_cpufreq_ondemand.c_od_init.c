
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct od_dbs_tuners {int powersave_bias; } ;
struct dbs_data {struct od_dbs_tuners* tuners; int io_is_busy; scalar_t__ ignore_nice_load; int sampling_down_factor; int up_threshold; } ;


 int DEF_FREQUENCY_UP_THRESHOLD ;
 int DEF_SAMPLING_DOWN_FACTOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MICRO_FREQUENCY_UP_THRESHOLD ;
 int default_powersave_bias ;
 int get_cpu () ;
 unsigned long long get_cpu_idle_time_us (int,int *) ;
 struct od_dbs_tuners* kzalloc (int,int ) ;
 int put_cpu () ;
 int should_io_be_busy () ;

__attribute__((used)) static int od_init(struct dbs_data *dbs_data)
{
 struct od_dbs_tuners *tuners;
 u64 idle_time;
 int cpu;

 tuners = kzalloc(sizeof(*tuners), GFP_KERNEL);
 if (!tuners)
  return -ENOMEM;

 cpu = get_cpu();
 idle_time = get_cpu_idle_time_us(cpu, ((void*)0));
 put_cpu();
 if (idle_time != -1ULL) {

  dbs_data->up_threshold = MICRO_FREQUENCY_UP_THRESHOLD;
 } else {
  dbs_data->up_threshold = DEF_FREQUENCY_UP_THRESHOLD;
 }

 dbs_data->sampling_down_factor = DEF_SAMPLING_DOWN_FACTOR;
 dbs_data->ignore_nice_load = 0;
 tuners->powersave_bias = default_powersave_bias;
 dbs_data->io_is_busy = should_io_be_busy();

 dbs_data->tuners = tuners;
 return 0;
}
