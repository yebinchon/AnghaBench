
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_cache {int dummy; } ;


 struct submodule_cache* xcalloc (int,int) ;

__attribute__((used)) static struct submodule_cache *submodule_cache_alloc(void)
{
 return xcalloc(1, sizeof(struct submodule_cache));
}
