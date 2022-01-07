
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entry ;
typedef int git_config ;


 int GET_NO_ERRORS ;
 int GET_NO_MISSING ;
 int get_entry (int **,int const*,char const*,int,int ) ;

int git_config__lookup_entry(
 git_config_entry **out,
 const git_config *cfg,
 const char *key,
 bool no_errors)
{
 return get_entry(
  out, cfg, key, 0, no_errors ? GET_NO_ERRORS : GET_NO_MISSING);
}
