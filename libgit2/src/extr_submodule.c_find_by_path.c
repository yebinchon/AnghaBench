
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int value; } ;
typedef TYPE_1__ git_config_entry ;
struct TYPE_5__ {int name; int path; } ;
typedef TYPE_2__ fbp_data ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int git__strndup (char const*,int) ;
 char* strchr (int ,char) ;
 int strcmp (int ,int ) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static int find_by_path(const git_config_entry *entry, void *payload)
{
 fbp_data *data = payload;

 if (!strcmp(entry->value, data->path)) {
  const char *fdot, *ldot;
  fdot = strchr(entry->name, '.');
  ldot = strrchr(entry->name, '.');
  data->name = git__strndup(fdot + 1, ldot - fdot - 1);
  GIT_ERROR_CHECK_ALLOC(data->name);
 }

 return 0;
}
