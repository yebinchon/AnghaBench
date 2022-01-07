
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbs_data {struct cs_dbs_tuners* tuners; scalar_t__ ignore_nice_load; int sampling_down_factor; int up_threshold; } ;
struct cs_dbs_tuners {int freq_step; int down_threshold; } ;


 int DEF_FREQUENCY_DOWN_THRESHOLD ;
 int DEF_FREQUENCY_STEP ;
 int DEF_FREQUENCY_UP_THRESHOLD ;
 int DEF_SAMPLING_DOWN_FACTOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct cs_dbs_tuners* kzalloc (int,int ) ;

__attribute__((used)) static int cs_init(struct dbs_data *dbs_data)
{
 struct cs_dbs_tuners *tuners;

 tuners = kzalloc(sizeof(*tuners), GFP_KERNEL);
 if (!tuners)
  return -ENOMEM;

 tuners->down_threshold = DEF_FREQUENCY_DOWN_THRESHOLD;
 tuners->freq_step = DEF_FREQUENCY_STEP;
 dbs_data->up_threshold = DEF_FREQUENCY_UP_THRESHOLD;
 dbs_data->sampling_down_factor = DEF_SAMPLING_DOWN_FACTOR;
 dbs_data->ignore_nice_load = 0;
 dbs_data->tuners = tuners;

 return 0;
}
