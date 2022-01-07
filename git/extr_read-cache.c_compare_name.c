
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry*) ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static int compare_name(struct cache_entry *ce, const char *path, int namelen)
{
 return namelen != ce_namelen(ce) || memcmp(path, ce->name, namelen);
}
