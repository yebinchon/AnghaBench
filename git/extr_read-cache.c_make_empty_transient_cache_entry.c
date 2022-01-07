
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 int cache_entry_size (size_t) ;
 struct cache_entry* xcalloc (int,int ) ;

struct cache_entry *make_empty_transient_cache_entry(size_t len)
{
 return xcalloc(1, cache_entry_size(len));
}
