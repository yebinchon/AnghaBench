
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;


 long long cache_uri_get_size (struct cache_uri*) ;
 struct cache_uri* get_uri_f (char const* const,int ) ;

int cache_get_file_size (const char *const uri, long long *size) {
  *size = -1;
  struct cache_uri *U = get_uri_f (uri, 0);
  if (U == ((void*)0)) {
    return -1;
  }
  *size = cache_uri_get_size (U);
  return (*size >= 0) ? 0 : -1;
}
