
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {scalar_t__ name; } ;


 int ENOMEM ;
 struct property_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct property_entry* kcalloc (int,int,int ) ;
 int kfree (struct property_entry*) ;
 int property_entry_copy_data (struct property_entry*,struct property_entry const*) ;
 int property_entry_free_data (struct property_entry*) ;

struct property_entry *
property_entries_dup(const struct property_entry *properties)
{
 struct property_entry *p;
 int i, n = 0;
 int ret;

 if (!properties)
  return ((void*)0);

 while (properties[n].name)
  n++;

 p = kcalloc(n + 1, sizeof(*p), GFP_KERNEL);
 if (!p)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < n; i++) {
  ret = property_entry_copy_data(&p[i], &properties[i]);
  if (ret) {
   while (--i >= 0)
    property_entry_free_data(&p[i]);
   kfree(p);
   return ERR_PTR(ret);
  }
 }

 return p;
}
