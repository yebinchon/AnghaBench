
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;
struct cache_local_copy {int dummy; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 struct cache_local_copy* LC ;
 int cache_local_copy_unpack (struct cache_uri*,struct cache_local_copy*,int ,int,int *) ;
 struct cache_uri* get_uri_f (char const* const,int ) ;
 int vkprintf (int,char*,char const* const) ;

int cache_do_local_copies (const char *const uri, struct cache_local_copy **R) {
  struct cache_uri *U = get_uri_f (uri, 0);
  if (U == ((void*)0)) {
    return -1;
  }
  int n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 1, ((void*)0));
  if (n < 0) {
    vkprintf (1, "cache_do_local_copies (uri: %s): cache_local_copy_unpack failed.\n", uri);
    return -1;
  }
  *R = LC;
  return n;
}
