
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argc; int * argv; } ;


 scalar_t__ skip_prefix (int ,char const*,char const**) ;

int has_capability(const struct argv_array *keys, const char *capability,
     const char **value)
{
 int i;
 for (i = 0; i < keys->argc; i++) {
  const char *out;
  if (skip_prefix(keys->argv[i], capability, &out) &&
      (!*out || *out == '=')) {
   if (value) {
    if (*out == '=')
     out++;
    *value = out;
   }
   return 1;
  }
 }

 return 0;
}
