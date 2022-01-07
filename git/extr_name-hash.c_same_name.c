
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry const*) ;
 int memcmp (char const*,int ,int) ;
 int slow_same_name (char const*,int,int ,int) ;

__attribute__((used)) static int same_name(const struct cache_entry *ce, const char *name, int namelen, int icase)
{
 int len = ce_namelen(ce);





 if (len == namelen && !memcmp(name, ce->name, len))
  return 1;

 if (!icase)
  return 0;

 return slow_same_name(name, namelen, ce->name, len);
}
