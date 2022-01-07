
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gov_attr_set {int dummy; } ;
struct dbs_data {unsigned int sampling_down_factor; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned int MAX_SAMPLING_DOWN_FACTOR ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct dbs_data* to_dbs_data (struct gov_attr_set*) ;

__attribute__((used)) static ssize_t store_sampling_down_factor(struct gov_attr_set *attr_set,
       const char *buf, size_t count)
{
 struct dbs_data *dbs_data = to_dbs_data(attr_set);
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);

 if (ret != 1 || input > MAX_SAMPLING_DOWN_FACTOR || input < 1)
  return -EINVAL;

 dbs_data->sampling_down_factor = input;
 return count;
}
