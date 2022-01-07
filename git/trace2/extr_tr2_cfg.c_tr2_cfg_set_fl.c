
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_cfg_data {char const* member_0; int member_1; } ;


 int tr2_cfg_cb (char const*,char const*,struct tr2_cfg_data*) ;
 scalar_t__ tr2_cfg_load_patterns () ;

void tr2_cfg_set_fl(const char *file, int line, const char *key,
      const char *value)
{
 struct tr2_cfg_data data = { file, line };

 if (tr2_cfg_load_patterns() > 0)
  tr2_cfg_cb(key, value, &data);
}
