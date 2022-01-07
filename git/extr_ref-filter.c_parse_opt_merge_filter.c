
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {int merge_commit; scalar_t__ merge; } ;
struct option {int long_name; struct ref_filter* value; } ;
struct object_id {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ REF_FILTER_MERGED_INCLUDE ;
 scalar_t__ REF_FILTER_MERGED_OMIT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int error (int ,int ) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int lookup_commit_reference_gently (int ,struct object_id*,int ) ;
 int starts_with (int ,char*) ;
 int the_repository ;

int parse_opt_merge_filter(const struct option *opt, const char *arg, int unset)
{
 struct ref_filter *rf = opt->value;
 struct object_id oid;
 int no_merged = starts_with(opt->long_name, "no");

 BUG_ON_OPT_NEG(unset);

 if (rf->merge) {
  if (no_merged) {
   return error(_("option `%s' is incompatible with --merged"),
         opt->long_name);
  } else {
   return error(_("option `%s' is incompatible with --no-merged"),
         opt->long_name);
  }
 }

 rf->merge = no_merged
  ? REF_FILTER_MERGED_OMIT
  : REF_FILTER_MERGED_INCLUDE;

 if (get_oid(arg, &oid))
  die(_("malformed object name %s"), arg);

 rf->merge_commit = lookup_commit_reference_gently(the_repository,
         &oid, 0);
 if (!rf->merge_commit)
  return error(_("option `%s' must point to a commit"), opt->long_name);

 return 0;
}
