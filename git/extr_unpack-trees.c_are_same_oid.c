
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int oid; } ;


 int is_null_oid (int *) ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static inline int are_same_oid(struct name_entry *name_j, struct name_entry *name_k)
{
 return !is_null_oid(&name_j->oid) && !is_null_oid(&name_k->oid) && oideq(&name_j->oid, &name_k->oid);
}
