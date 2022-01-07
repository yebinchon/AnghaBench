
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;


 int diff_tree_oid (int *,struct object_id const*,char const*,struct diff_options*) ;

int diff_root_tree_oid(const struct object_id *new_oid, const char *base, struct diff_options *opt)
{
 return diff_tree_oid(((void*)0), new_oid, base, opt);
}
