
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;


 int cache_convert (struct cache_uri*,char*,int) ;
 struct cache_uri* get_uri_f (char const* const,int ) ;

int cache_do_convert (const char *const uri, char *output, int olen) {
  struct cache_uri *U = get_uri_f (uri, 0);
  if (U == ((void*)0)) {
    return -1;
  }
  return cache_convert (U, output, olen);
}
