
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int merge_simplification; } ;
struct merge_simplify_state {int dummy; } ;
struct commit {int object; } ;


 int add_decoration (int *,int *,struct merge_simplify_state*) ;
 struct merge_simplify_state* lookup_decoration (int *,int *) ;
 struct merge_simplify_state* xcalloc (int,int) ;

__attribute__((used)) static struct merge_simplify_state *locate_simplify_state(struct rev_info *revs, struct commit *commit)
{
 struct merge_simplify_state *st;

 st = lookup_decoration(&revs->merge_simplification, &commit->object);
 if (!st) {
  st = xcalloc(1, sizeof(*st));
  add_decoration(&revs->merge_simplification, &commit->object, st);
 }
 return st;
}
