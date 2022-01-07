
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int mark_complete (struct object_id const*) ;

__attribute__((used)) static int mark_complete_oid(const char *refname, const struct object_id *oid,
        int flag, void *cb_data)
{
 return mark_complete(oid);
}
