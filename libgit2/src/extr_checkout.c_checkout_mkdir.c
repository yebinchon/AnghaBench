
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ chmod_calls; scalar_t__ stat_calls; scalar_t__ mkdir_calls; } ;
struct git_futils_mkdir_options {TYPE_2__ perfdata; int * pool; int dir_map; int member_0; } ;
typedef int mode_t ;
struct TYPE_5__ {int chmod_calls; int stat_calls; int mkdir_calls; } ;
struct TYPE_7__ {TYPE_1__ perfdata; int pool; int mkdir_map; } ;
typedef TYPE_3__ checkout_data ;


 int git_futils_mkdir_relative (char const*,char const*,int ,unsigned int,struct git_futils_mkdir_options*) ;

__attribute__((used)) static int checkout_mkdir(
 checkout_data *data,
 const char *path,
 const char *base,
 mode_t mode,
 unsigned int flags)
{
 struct git_futils_mkdir_options mkdir_opts = {0};
 int error;

 mkdir_opts.dir_map = data->mkdir_map;
 mkdir_opts.pool = &data->pool;

 error = git_futils_mkdir_relative(
  path, base, mode, flags, &mkdir_opts);

 data->perfdata.mkdir_calls += mkdir_opts.perfdata.mkdir_calls;
 data->perfdata.stat_calls += mkdir_opts.perfdata.stat_calls;
 data->perfdata.chmod_calls += mkdir_opts.perfdata.chmod_calls;

 return error;
}
