
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gov_attr_set {int dummy; } ;
struct dbs_data {int io_is_busy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int gov_update_cpu_data (struct dbs_data*) ;
 int sscanf (char const*,char*,unsigned int*) ;
 struct dbs_data* to_dbs_data (struct gov_attr_set*) ;

__attribute__((used)) static ssize_t store_io_is_busy(struct gov_attr_set *attr_set, const char *buf,
    size_t count)
{
 struct dbs_data *dbs_data = to_dbs_data(attr_set);
 unsigned int input;
 int ret;

 ret = sscanf(buf, "%u", &input);
 if (ret != 1)
  return -EINVAL;
 dbs_data->io_is_busy = !!input;


 gov_update_cpu_data(dbs_data);

 return count;
}
