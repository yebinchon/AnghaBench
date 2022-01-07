
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fsck_options {int dummy; } ;
struct fsck_gitmodules_data {int ret; struct fsck_options* options; TYPE_1__* obj; } ;
struct config_options {int error_action; int member_0; } ;
struct TYPE_3__ {int oid; } ;
struct blob {TYPE_1__ object; } ;


 int CONFIG_ERROR_SILENT ;
 int CONFIG_ORIGIN_BLOB ;
 int FSCK_MSG_GITMODULES_LARGE ;
 int FSCK_MSG_GITMODULES_PARSE ;
 int fsck_gitmodules_fn ;
 scalar_t__ git_config_from_mem (int ,int ,char*,char const*,unsigned long,struct fsck_gitmodules_data*,struct config_options*) ;
 int gitmodules_done ;
 int gitmodules_found ;
 scalar_t__ object_on_skiplist (struct fsck_options*,TYPE_1__*) ;
 int oidset_contains (int *,int *) ;
 int oidset_insert (int *,int *) ;
 int report (struct fsck_options*,TYPE_1__*,int ,char*) ;

__attribute__((used)) static int fsck_blob(struct blob *blob, const char *buf,
       unsigned long size, struct fsck_options *options)
{
 struct fsck_gitmodules_data data;
 struct config_options config_opts = { 0 };

 if (!oidset_contains(&gitmodules_found, &blob->object.oid))
  return 0;
 oidset_insert(&gitmodules_done, &blob->object.oid);

 if (object_on_skiplist(options, &blob->object))
  return 0;

 if (!buf) {





  return report(options, &blob->object,
         FSCK_MSG_GITMODULES_LARGE,
         ".gitmodules too large to parse");
 }

 data.obj = &blob->object;
 data.options = options;
 data.ret = 0;
 config_opts.error_action = CONFIG_ERROR_SILENT;
 if (git_config_from_mem(fsck_gitmodules_fn, CONFIG_ORIGIN_BLOB,
    ".gitmodules", buf, size, &data, &config_opts))
  data.ret |= report(options, &blob->object,
       FSCK_MSG_GITMODULES_PARSE,
       "could not parse gitmodules blob");

 return data.ret;
}
