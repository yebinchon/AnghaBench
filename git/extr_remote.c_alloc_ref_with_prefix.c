
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {scalar_t__ name; } ;


 int memcpy (scalar_t__,char const*,size_t) ;
 int st_add4 (int,size_t,size_t,int) ;
 size_t strlen (char const*) ;
 struct ref* xcalloc (int,int ) ;

__attribute__((used)) static struct ref *alloc_ref_with_prefix(const char *prefix, size_t prefixlen,
  const char *name)
{
 size_t len = strlen(name);
 struct ref *ref = xcalloc(1, st_add4(sizeof(*ref), prefixlen, len, 1));
 memcpy(ref->name, prefix, prefixlen);
 memcpy(ref->name + prefixlen, name, len);
 return ref;
}
