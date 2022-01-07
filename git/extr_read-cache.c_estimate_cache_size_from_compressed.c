
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 int CACHE_ENTRY_PATH_LENGTH ;

__attribute__((used)) static size_t estimate_cache_size_from_compressed(unsigned int entries)
{
 return entries * (sizeof(struct cache_entry) + CACHE_ENTRY_PATH_LENGTH);
}
