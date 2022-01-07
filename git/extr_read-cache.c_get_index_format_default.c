
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index_version; } ;
struct repository {TYPE_1__ settings; } ;


 unsigned int INDEX_FORMAT_DEFAULT ;
 unsigned int INDEX_FORMAT_LB ;
 unsigned int INDEX_FORMAT_UB ;
 int _ (char*) ;
 char* getenv (char*) ;
 int prepare_repo_settings (struct repository*) ;
 unsigned int strtoul (char*,char**,int) ;
 int warning (int ,unsigned int) ;

__attribute__((used)) static unsigned int get_index_format_default(struct repository *r)
{
 char *envversion = getenv("GIT_INDEX_VERSION");
 char *endp;
 unsigned int version = INDEX_FORMAT_DEFAULT;

 if (!envversion) {
  prepare_repo_settings(r);

  if (r->settings.index_version >= 0)
   version = r->settings.index_version;
  if (version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < version) {
   warning(_("index.version set, but the value is invalid.\n"
      "Using version %i"), INDEX_FORMAT_DEFAULT);
   return INDEX_FORMAT_DEFAULT;
  }
  return version;
 }

 version = strtoul(envversion, &endp, 10);
 if (*endp ||
     version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < version) {
  warning(_("GIT_INDEX_VERSION set, but the value is invalid.\n"
     "Using version %i"), INDEX_FORMAT_DEFAULT);
  version = INDEX_FORMAT_DEFAULT;
 }
 return version;
}
