
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getenv (char*) ;

int should_validate_cache_entries(void)
{
 static int validate_index_cache_entries = -1;

 if (validate_index_cache_entries < 0) {
  if (getenv("GIT_TEST_VALIDATE_INDEX_CACHE_ENTRIES"))
   validate_index_cache_entries = 1;
  else
   validate_index_cache_entries = 0;
 }

 return validate_index_cache_entries;
}
