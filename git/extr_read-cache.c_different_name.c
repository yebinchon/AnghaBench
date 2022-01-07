
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int different_name(struct cache_entry *ce, struct cache_entry *alias)
{
 int len = ce_namelen(ce);
 return ce_namelen(alias) != len || memcmp(ce->name, alias->name, len);
}
