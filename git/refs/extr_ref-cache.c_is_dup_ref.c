
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct ref_entry {int flag; int name; TYPE_2__ u; } ;


 int REF_DIR ;
 int die (char*,int ) ;
 int oideq (int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int warning (char*,int ) ;

__attribute__((used)) static int is_dup_ref(const struct ref_entry *ref1, const struct ref_entry *ref2)
{
 if (strcmp(ref1->name, ref2->name))
  return 0;



 if ((ref1->flag & REF_DIR) || (ref2->flag & REF_DIR))

  die("Reference directory conflict: %s", ref1->name);

 if (!oideq(&ref1->u.value.oid, &ref2->u.value.oid))
  die("Duplicated ref, and SHA1s don't match: %s", ref1->name);

 warning("Duplicated ref: %s", ref1->name);
 return 1;
}
