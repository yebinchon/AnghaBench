
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int git_config ;


 int git_config_set_int64 (int *,char const*,int ) ;

int git_config_set_int32(git_config *cfg, const char *name, int32_t value)
{
 return git_config_set_int64(cfg, name, (int64_t)value);
}
