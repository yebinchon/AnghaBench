
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct conf_info {int if_missing; int if_exists; int where; void* command; void* key; } ;
struct arg_item {struct conf_info conf; } ;
typedef enum trailer_info_type { ____Placeholder_trailer_info_type } trailer_info_type ;
struct TYPE_3__ {int type; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG (char*,int) ;





 int _ (char*) ;
 int free (char*) ;
 struct arg_item* get_conf_item (char*) ;
 int skip_prefix (char const*,char*,char const**) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* strrchr (char const*,char) ;
 TYPE_1__* trailer_config_items ;
 int trailer_set_if_exists (int *,char const*) ;
 int trailer_set_if_missing (int *,char const*) ;
 int trailer_set_where (int *,char const*) ;
 int warning (int ,char const*,...) ;
 void* xstrdup (char const*) ;
 char* xstrndup (char const*,int) ;

__attribute__((used)) static int git_trailer_config(const char *conf_key, const char *value, void *cb)
{
 const char *trailer_item, *variable_name;
 struct arg_item *item;
 struct conf_info *conf;
 char *name = ((void*)0);
 enum trailer_info_type type;
 int i;

 if (!skip_prefix(conf_key, "trailer.", &trailer_item))
  return 0;

 variable_name = strrchr(trailer_item, '.');
 if (!variable_name)
  return 0;

 variable_name++;
 for (i = 0; i < ARRAY_SIZE(trailer_config_items); i++) {
  if (strcmp(trailer_config_items[i].name, variable_name))
   continue;
  name = xstrndup(trailer_item, variable_name - trailer_item - 1);
  type = trailer_config_items[i].type;
  break;
 }

 if (!name)
  return 0;

 item = get_conf_item(name);
 conf = &item->conf;
 free(name);

 switch (type) {
 case 129:
  if (conf->key)
   warning(_("more than one %s"), conf_key);
  conf->key = xstrdup(value);
  break;
 case 132:
  if (conf->command)
   warning(_("more than one %s"), conf_key);
  conf->command = xstrdup(value);
  break;
 case 128:
  if (trailer_set_where(&conf->where, value))
   warning(_("unknown value '%s' for key '%s'"), value, conf_key);
  break;
 case 131:
  if (trailer_set_if_exists(&conf->if_exists, value))
   warning(_("unknown value '%s' for key '%s'"), value, conf_key);
  break;
 case 130:
  if (trailer_set_if_missing(&conf->if_missing, value))
   warning(_("unknown value '%s' for key '%s'"), value, conf_key);
  break;
 default:
  BUG("trailer.c: unhandled type %d", type);
 }
 return 0;
}
