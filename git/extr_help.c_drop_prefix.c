
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ CAT_guide ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static const char *drop_prefix(const char *name, uint32_t category)
{
 const char *new_name;

 if (skip_prefix(name, "git-", &new_name))
  return new_name;
 if (category == CAT_guide && skip_prefix(name, "git", &new_name))
  return new_name;
 return name;

}
