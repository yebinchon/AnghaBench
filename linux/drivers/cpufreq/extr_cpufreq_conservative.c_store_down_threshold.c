
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gov_attr_set {int dummy; } ;
struct dbs_data {unsigned int up_threshold; struct cs_dbs_tuners* tuners; } ;
struct cs_dbs_tuners {unsigned int down_threshold; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct dbs_data* to_dbs_data (struct gov_attr_set*) ;

__attribute__((used)) static ssize_t store_down_threshold(struct gov_attr_set *attr_set,
        const char *buf, size_t count)
{
 struct dbs_data *dbs_data = to_dbs_data(attr_set);
 struct cs_dbs_tuners *cs_tuners = dbs_data->tuners;
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);


 if (ret != 1 || input < 1 || input > 100 ||
   input >= dbs_data->up_threshold)
  return -EINVAL;

 cs_tuners->down_threshold = input;
 return count;
}
