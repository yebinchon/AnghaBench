
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int cmp_idx_or_pack_name(const char *idx_or_pack_name,
    const char *idx_name)
{

 while (*idx_name && *idx_name == *idx_or_pack_name) {
  idx_name++;
  idx_or_pack_name++;
 }
 if (!strcmp(idx_name, "idx") && !strcmp(idx_or_pack_name, "pack"))
  return 0;







 return strcmp(idx_or_pack_name, idx_name);
}
