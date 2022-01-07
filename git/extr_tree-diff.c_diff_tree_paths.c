
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct combine_diff_path {int next; } ;


 int FREE_AND_NULL (int ) ;
 struct combine_diff_path* ll_diff_tree_paths (struct combine_diff_path*,struct object_id const*,struct object_id const**,int,struct strbuf*,struct diff_options*) ;

struct combine_diff_path *diff_tree_paths(
 struct combine_diff_path *p, const struct object_id *oid,
 const struct object_id **parents_oid, int nparent,
 struct strbuf *base, struct diff_options *opt)
{
 p = ll_diff_tree_paths(p, oid, parents_oid, nparent, base, opt);





 FREE_AND_NULL(p->next);

 return p;
}
