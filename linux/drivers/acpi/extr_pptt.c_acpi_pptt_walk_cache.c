
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_subtable_header {scalar_t__ type; } ;
struct acpi_pptt_cache {int flags; int next_level_of_cache; int attributes; } ;


 int ACPI_PPTT_CACHE_TYPE_VALID ;
 scalar_t__ ACPI_PPTT_TYPE_CACHE ;
 scalar_t__ acpi_pptt_match_type (int ,int) ;
 struct acpi_pptt_cache* fetch_pptt_cache (struct acpi_table_header*,int ) ;
 int pr_debug (char*,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int acpi_pptt_walk_cache(struct acpi_table_header *table_hdr,
    int local_level,
    struct acpi_subtable_header *res,
    struct acpi_pptt_cache **found,
    int level, int type)
{
 struct acpi_pptt_cache *cache;

 if (res->type != ACPI_PPTT_TYPE_CACHE)
  return 0;

 cache = (struct acpi_pptt_cache *) res;
 while (cache) {
  local_level++;

  if (local_level == level &&
      cache->flags & ACPI_PPTT_CACHE_TYPE_VALID &&
      acpi_pptt_match_type(cache->attributes, type)) {
   if (*found != ((void*)0) && cache != *found)
    pr_warn("Found duplicate cache level/type unable to determine uniqueness\n");

   pr_debug("Found cache @ level %d\n", level);
   *found = cache;





  }
  cache = fetch_pptt_cache(table_hdr, cache->next_level_of_cache);
 }
 return local_level;
}
