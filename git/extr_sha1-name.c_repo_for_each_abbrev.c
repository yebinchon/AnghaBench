
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct disambiguate_state {int always_call_fn; struct oid_array* cb_data; int fn; } ;
typedef int each_abbrev_fn ;


 struct oid_array OID_ARRAY_INIT ;
 int find_short_object_filename (struct disambiguate_state*) ;
 int find_short_packed_object (struct disambiguate_state*) ;
 scalar_t__ init_object_disambiguation (struct repository*,char const*,int ,struct disambiguate_state*) ;
 int oid_array_clear (struct oid_array*) ;
 int oid_array_for_each_unique (struct oid_array*,int ,void*) ;
 int repo_collect_ambiguous ;
 int strlen (char const*) ;

int repo_for_each_abbrev(struct repository *r, const char *prefix,
    each_abbrev_fn fn, void *cb_data)
{
 struct oid_array collect = OID_ARRAY_INIT;
 struct disambiguate_state ds;
 int ret;

 if (init_object_disambiguation(r, prefix, strlen(prefix), &ds) < 0)
  return -1;

 ds.always_call_fn = 1;
 ds.fn = repo_collect_ambiguous;
 ds.cb_data = &collect;
 find_short_object_filename(&ds);
 find_short_packed_object(&ds);

 ret = oid_array_for_each_unique(&collect, fn, cb_data);
 oid_array_clear(&collect);
 return ret;
}
