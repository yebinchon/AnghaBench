
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;


 int free (char*) ;
 TYPE_1__ fsck_msg_types ;
 scalar_t__ git_config_pathname (char const**,char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ is_valid_msg_type (char const*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (TYPE_1__*,char*,char,char const*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warning (char*,char const*) ;

__attribute__((used)) static int fetch_pack_config_cb(const char *var, const char *value, void *cb)
{
 if (strcmp(var, "fetch.fsck.skiplist") == 0) {
  const char *path;

  if (git_config_pathname(&path, var, value))
   return 1;
  strbuf_addf(&fsck_msg_types, "%cskiplist=%s",
   fsck_msg_types.len ? ',' : '=', path);
  free((char *)path);
  return 0;
 }

 if (skip_prefix(var, "fetch.fsck.", &var)) {
  if (is_valid_msg_type(var, value))
   strbuf_addf(&fsck_msg_types, "%c%s=%s",
    fsck_msg_types.len ? ',' : '=', var, value);
  else
   warning("Skipping unknown msg id '%s'", var);
  return 0;
 }

 return git_default_config(var, value, cb);
}
