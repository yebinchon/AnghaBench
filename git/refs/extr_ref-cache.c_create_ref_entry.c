
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct ref_entry {int flag; TYPE_2__ u; } ;
struct object_id {int dummy; } ;


 int FLEX_ALLOC_STR (struct ref_entry*,int ,char const*) ;
 int name ;
 int oidcpy (int *,struct object_id const*) ;

struct ref_entry *create_ref_entry(const char *refname,
       const struct object_id *oid, int flag)
{
 struct ref_entry *ref;

 FLEX_ALLOC_STR(ref, name, refname);
 oidcpy(&ref->u.value.oid, oid);
 ref->flag = flag;
 return ref;
}
