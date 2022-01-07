
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cache {int dummy; } ;


 int NL_DBG (int,char*,struct nl_cache*,int ) ;
 int free (struct nl_cache*) ;
 int nl_cache_clear (struct nl_cache*) ;
 int nl_cache_name (struct nl_cache*) ;

void nl_cache_free(struct nl_cache *cache)
{
 if (!cache)
  return;

 nl_cache_clear(cache);
 NL_DBG(1, "Freeing cache %p <%s>...\n", cache, nl_cache_name(cache));
 free(cache);
}
