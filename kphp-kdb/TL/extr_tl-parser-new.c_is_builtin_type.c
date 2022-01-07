
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

int is_builtin_type (const char *id) {
  return !strcmp (id, "int") || !strcmp (id, "long") || !strcmp (id, "double") || !strcmp (id, "string");
}
