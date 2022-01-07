
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int string_list_has_string (struct string_list*,char const*) ;

__attribute__((used)) static int ref_present(const char *refname,
         const struct object_id *oid, int flags, void *cb_data)
{
 struct string_list *affected_refnames = cb_data;

 return string_list_has_string(affected_refnames, refname);
}
