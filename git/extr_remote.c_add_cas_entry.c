
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_cas_option {scalar_t__ nr; struct push_cas* entry; int alloc; } ;
struct push_cas {int refname; } ;


 int ALLOC_GROW (struct push_cas*,scalar_t__,int ) ;
 int memset (struct push_cas*,int ,int) ;
 int xmemdupz (char const*,size_t) ;

__attribute__((used)) static struct push_cas *add_cas_entry(struct push_cas_option *cas,
          const char *refname,
          size_t refnamelen)
{
 struct push_cas *entry;
 ALLOC_GROW(cas->entry, cas->nr + 1, cas->alloc);
 entry = &cas->entry[cas->nr++];
 memset(entry, 0, sizeof(*entry));
 entry->refname = xmemdupz(refname, refnamelen);
 return entry;
}
