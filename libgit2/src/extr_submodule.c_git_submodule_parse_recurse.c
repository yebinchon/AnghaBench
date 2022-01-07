
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_submodule_recurse_t ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ GIT_SUBMODULE_RECURSE_YES ;
 int _sm_recurse_map ;
 scalar_t__ git_config_lookup_map_value (int*,int ,int ,char const*) ;
 int submodule_config_error (char*,char const*) ;

int git_submodule_parse_recurse(git_submodule_recurse_t *out, const char *value)
{
 int val;

 if (git_config_lookup_map_value(
   &val, _sm_recurse_map, ARRAY_SIZE(_sm_recurse_map), value) < 0) {
  *out = GIT_SUBMODULE_RECURSE_YES;
  return submodule_config_error("recurse", value);
 }

 *out = (git_submodule_recurse_t)val;
 return 0;
}
