
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; struct ref* next; } ;


 int refname_match (char const*,int ) ;

__attribute__((used)) static const struct ref *find_ref_by_name_abbrev(const struct ref *refs, const char *name)
{
 const struct ref *ref;
 const struct ref *best_match = ((void*)0);
 int best_score = 0;

 for (ref = refs; ref; ref = ref->next) {
  int score = refname_match(name, ref->name);

  if (best_score < score) {
   best_match = ref;
   best_score = score;
  }
 }
 return best_match;
}
