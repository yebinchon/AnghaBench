
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_object {int dummy; } ;


 int * cache ;
 int * family ;
 int * handle ;
 int nl_cache_free (int *) ;
 int nl_object_put (struct nl_object*) ;
 int nl_socket_free (int *) ;

__attribute__((used)) static void
swlib_priv_free(void)
{
 if (family)
  nl_object_put((struct nl_object*)family);
 if (cache)
  nl_cache_free(cache);
 if (handle)
  nl_socket_free(handle);
 family = ((void*)0);
 handle = ((void*)0);
 cache = ((void*)0);
}
