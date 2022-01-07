
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct disambiguate_state {int hex_pfx; int * fn; int ambiguous; } ;
typedef enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;


 int BUG (char*) ;
 unsigned int GET_OID_BLOB ;
 unsigned int GET_OID_COMMIT ;
 unsigned int GET_OID_COMMITTISH ;
 unsigned int GET_OID_DISAMBIGUATORS ;
 unsigned int GET_OID_QUIETLY ;
 unsigned int GET_OID_TREE ;
 unsigned int GET_OID_TREEISH ;
 scalar_t__ HAS_MULTI_BITS (unsigned int) ;
 int MISSING_OBJECT ;
 struct oid_array OID_ARRAY_INIT ;
 int SHORT_NAME_AMBIGUOUS ;
 int _ (char*) ;
 int advise (int ) ;
 int collect_ambiguous ;
 int * default_disambiguate_hint ;
 int * disambiguate_blob_only ;
 int * disambiguate_commit_only ;
 int * disambiguate_committish_only ;
 int * disambiguate_tree_only ;
 int * disambiguate_treeish_only ;
 int error (int ,int ) ;
 int find_short_object_filename (struct disambiguate_state*) ;
 int find_short_packed_object (struct disambiguate_state*) ;
 int finish_object_disambiguation (struct disambiguate_state*,struct object_id*) ;
 scalar_t__ init_object_disambiguation (struct repository*,char const*,int,struct disambiguate_state*) ;
 int oid_array_clear (struct oid_array*) ;
 scalar_t__ oid_array_for_each (struct oid_array*,int ,struct disambiguate_state*) ;
 int repo_for_each_abbrev (struct repository*,int ,int ,struct oid_array*) ;
 int reprepare_packed_git (struct repository*) ;
 int show_ambiguous_object ;
 int sort_ambiguous_oid_array (struct repository*,struct oid_array*) ;

__attribute__((used)) static enum get_oid_result get_short_oid(struct repository *r,
      const char *name, int len,
      struct object_id *oid,
      unsigned flags)
{
 int status;
 struct disambiguate_state ds;
 int quietly = !!(flags & GET_OID_QUIETLY);

 if (init_object_disambiguation(r, name, len, &ds) < 0)
  return -1;

 if (HAS_MULTI_BITS(flags & GET_OID_DISAMBIGUATORS))
  BUG("multiple get_short_oid disambiguator flags");

 if (flags & GET_OID_COMMIT)
  ds.fn = disambiguate_commit_only;
 else if (flags & GET_OID_COMMITTISH)
  ds.fn = disambiguate_committish_only;
 else if (flags & GET_OID_TREE)
  ds.fn = disambiguate_tree_only;
 else if (flags & GET_OID_TREEISH)
  ds.fn = disambiguate_treeish_only;
 else if (flags & GET_OID_BLOB)
  ds.fn = disambiguate_blob_only;
 else
  ds.fn = default_disambiguate_hint;

 find_short_object_filename(&ds);
 find_short_packed_object(&ds);
 status = finish_object_disambiguation(&ds, oid);






 if (status == MISSING_OBJECT) {
  reprepare_packed_git(r);
  find_short_object_filename(&ds);
  find_short_packed_object(&ds);
  status = finish_object_disambiguation(&ds, oid);
 }

 if (!quietly && (status == SHORT_NAME_AMBIGUOUS)) {
  struct oid_array collect = OID_ARRAY_INIT;

  error(_("short SHA1 %s is ambiguous"), ds.hex_pfx);







  if (!ds.ambiguous)
   ds.fn = ((void*)0);

  advise(_("The candidates are:"));
  repo_for_each_abbrev(r, ds.hex_pfx, collect_ambiguous, &collect);
  sort_ambiguous_oid_array(r, &collect);

  if (oid_array_for_each(&collect, show_ambiguous_object, &ds))
   BUG("show_ambiguous_object shouldn't return non-zero");
  oid_array_clear(&collect);
 }

 return status;
}
