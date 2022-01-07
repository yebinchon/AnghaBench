
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;

int iwdp_update_string(char **old_value, const char *new_value) {
  if (*old_value) {
    if (new_value && !strcmp(*old_value, new_value)) {
      return 0;
    }
    free(*old_value);
    *old_value = ((void*)0);
  }
  if (new_value) {
    *old_value = strdup(new_value);
    if (!*old_value) {
      return -1;
    }
  }
  return 0;
}
