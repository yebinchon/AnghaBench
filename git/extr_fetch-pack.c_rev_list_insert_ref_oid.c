
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int rev_list_insert_ref (void*,char const*,struct object_id const*) ;

__attribute__((used)) static int rev_list_insert_ref_oid(const char *refname, const struct object_id *oid,
       int flag, void *cb_data)
{
 return rev_list_insert_ref(cb_data, refname, oid);
}
