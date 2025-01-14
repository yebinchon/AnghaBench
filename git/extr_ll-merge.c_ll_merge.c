
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ll_merge_options {scalar_t__ extra_marker_size; scalar_t__ virtual_ancestor; scalar_t__ renormalize; } ;
struct ll_merge_driver {char const* recursive; int (* fn ) (struct ll_merge_driver const*,int *,char const*,int *,char const*,int *,char const*,int *,char const*,struct ll_merge_options const*,int) ;} ;
struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
typedef int mmfile_t ;
typedef int mmbuffer_t ;
struct TYPE_2__ {char* value; } ;


 int DEFAULT_CONFLICT_MARKER_SIZE ;
 int atoi (char*) ;
 struct ll_merge_driver* find_ll_merge_driver (char const*) ;
 int git_check_attr (struct index_state*,char const*,struct attr_check*) ;
 struct attr_check* load_merge_attributes () ;
 int normalize_file (int *,char const*,struct index_state*) ;
 int stub1 (struct ll_merge_driver const*,int *,char const*,int *,char const*,int *,char const*,int *,char const*,struct ll_merge_options const*,int) ;

int ll_merge(mmbuffer_t *result_buf,
      const char *path,
      mmfile_t *ancestor, const char *ancestor_label,
      mmfile_t *ours, const char *our_label,
      mmfile_t *theirs, const char *their_label,
      struct index_state *istate,
      const struct ll_merge_options *opts)
{
 struct attr_check *check = load_merge_attributes();
 static const struct ll_merge_options default_opts;
 const char *ll_driver_name = ((void*)0);
 int marker_size = DEFAULT_CONFLICT_MARKER_SIZE;
 const struct ll_merge_driver *driver;

 if (!opts)
  opts = &default_opts;

 if (opts->renormalize) {
  normalize_file(ancestor, path, istate);
  normalize_file(ours, path, istate);
  normalize_file(theirs, path, istate);
 }

 git_check_attr(istate, path, check);
 ll_driver_name = check->items[0].value;
 if (check->items[1].value) {
  marker_size = atoi(check->items[1].value);
  if (marker_size <= 0)
   marker_size = DEFAULT_CONFLICT_MARKER_SIZE;
 }
 driver = find_ll_merge_driver(ll_driver_name);

 if (opts->virtual_ancestor) {
  if (driver->recursive)
   driver = find_ll_merge_driver(driver->recursive);
 }
 if (opts->extra_marker_size) {
  marker_size += opts->extra_marker_size;
 }
 return driver->fn(driver, result_buf, path, ancestor, ancestor_label,
     ours, our_label, theirs, their_label,
     opts, marker_size);
}
