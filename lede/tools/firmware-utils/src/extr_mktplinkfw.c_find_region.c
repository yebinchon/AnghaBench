
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_region {int name; } ;


 size_t ARRAY_SIZE (struct fw_region const*) ;
 struct fw_region const* regions ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static const struct fw_region * find_region(const char *country) {
 size_t i;

 for (i = 0; i < ARRAY_SIZE(regions); i++) {
  if (strcasecmp(regions[i].name, country) == 0)
   return &regions[i];
 }

 return ((void*)0);
}
