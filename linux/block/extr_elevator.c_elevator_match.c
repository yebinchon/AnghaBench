
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_type {scalar_t__ elevator_alias; scalar_t__ elevator_name; int elevator_features; } ;


 int elv_support_features (int ,unsigned int) ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static bool elevator_match(const struct elevator_type *e, const char *name,
      unsigned int required_features)
{
 if (!elv_support_features(e->elevator_features, required_features))
  return 0;
 if (!strcmp(e->elevator_name, name))
  return 1;
 if (e->elevator_alias && !strcmp(e->elevator_alias, name))
  return 1;

 return 0;
}
