
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; struct ref* next; } ;
struct oidset {int dummy; } ;


 int oidset_insert (struct oidset*,int *) ;

__attribute__((used)) static void add_refs_to_oidset(struct oidset *oids, struct ref *refs)
{
 for (; refs; refs = refs->next)
  oidset_insert(oids, &refs->old_oid);
}
