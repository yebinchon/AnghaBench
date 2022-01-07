
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AspellConfig ;


 int aspell_config_error_message (int *) ;
 int aspell_config_replace (int *,char const*,char const*) ;
 int vkprintf (int,char*,int ,...) ;

__attribute__((used)) static int vk_aspell_config_replace (AspellConfig *c, const char *key, const char *value) {
  if (!aspell_config_replace (c, key, value)) {
    vkprintf (1, "aspell_config_replace (%p, %s, %s) fail.\n", c, key, value);
    vkprintf (1, "%s\n", aspell_config_error_message (c));
    return 0;
  }
  return 1;
}
