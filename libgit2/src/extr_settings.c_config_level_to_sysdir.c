
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int GIT_SYSDIR_GLOBAL ;
 int GIT_SYSDIR_PROGRAMDATA ;
 int GIT_SYSDIR_SYSTEM ;
 int GIT_SYSDIR_XDG ;
 int git_error_set (int ,char*,int) ;

__attribute__((used)) static int config_level_to_sysdir(int config_level)
{
 int val = -1;

 switch (config_level) {
 case 129:
  val = GIT_SYSDIR_SYSTEM;
  break;
 case 128:
  val = GIT_SYSDIR_XDG;
  break;
 case 131:
  val = GIT_SYSDIR_GLOBAL;
  break;
 case 130:
  val = GIT_SYSDIR_PROGRAMDATA;
  break;
 default:
  git_error_set(
   GIT_ERROR_INVALID, "invalid config path selector %d", config_level);
 }

 return val;
}
