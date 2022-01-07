
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter_cbdata {int no_contains_cache; int contains_cache; struct ref_filter* filter; struct ref_array* array; } ;
struct ref_filter {unsigned int kind; scalar_t__ merge_commit; } ;
struct ref_array {int dummy; } ;


 int FILTER_REFS_ALL ;
 unsigned int FILTER_REFS_BRANCHES ;
 int FILTER_REFS_DETACHED_HEAD ;
 unsigned int FILTER_REFS_INCLUDE_BROKEN ;
 unsigned int FILTER_REFS_KIND_MASK ;
 unsigned int FILTER_REFS_REMOTES ;
 unsigned int FILTER_REFS_TAGS ;
 int clear_contains_cache (int *) ;
 int die (char*) ;
 int do_merge_filter (struct ref_filter_cbdata*) ;
 int for_each_fullref_in (char*,int ,struct ref_filter_cbdata*,unsigned int) ;
 int for_each_fullref_in_pattern (struct ref_filter*,int ,struct ref_filter_cbdata*,unsigned int) ;
 int head_ref (int ,struct ref_filter_cbdata*) ;
 int init_contains_cache (int *) ;
 int ref_filter_handler ;

int filter_refs(struct ref_array *array, struct ref_filter *filter, unsigned int type)
{
 struct ref_filter_cbdata ref_cbdata;
 int ret = 0;
 unsigned int broken = 0;

 ref_cbdata.array = array;
 ref_cbdata.filter = filter;

 if (type & FILTER_REFS_INCLUDE_BROKEN)
  broken = 1;
 filter->kind = type & FILTER_REFS_KIND_MASK;

 init_contains_cache(&ref_cbdata.contains_cache);
 init_contains_cache(&ref_cbdata.no_contains_cache);


 if (!filter->kind)
  die("filter_refs: invalid type");
 else {






  if (filter->kind == FILTER_REFS_BRANCHES)
   ret = for_each_fullref_in("refs/heads/", ref_filter_handler, &ref_cbdata, broken);
  else if (filter->kind == FILTER_REFS_REMOTES)
   ret = for_each_fullref_in("refs/remotes/", ref_filter_handler, &ref_cbdata, broken);
  else if (filter->kind == FILTER_REFS_TAGS)
   ret = for_each_fullref_in("refs/tags/", ref_filter_handler, &ref_cbdata, broken);
  else if (filter->kind & FILTER_REFS_ALL)
   ret = for_each_fullref_in_pattern(filter, ref_filter_handler, &ref_cbdata, broken);
  if (!ret && (filter->kind & FILTER_REFS_DETACHED_HEAD))
   head_ref(ref_filter_handler, &ref_cbdata);
 }

 clear_contains_cache(&ref_cbdata.contains_cache);
 clear_contains_cache(&ref_cbdata.no_contains_cache);


 if (filter->merge_commit)
  do_merge_filter(&ref_cbdata);

 return ret;
}
