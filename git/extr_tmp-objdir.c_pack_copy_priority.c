
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ends_with (char const*,char*) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static int pack_copy_priority(const char *name)
{
 if (!starts_with(name, "pack"))
  return 0;
 if (ends_with(name, ".keep"))
  return 1;
 if (ends_with(name, ".pack"))
  return 2;
 if (ends_with(name, ".idx"))
  return 3;
 return 4;
}
