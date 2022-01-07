
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int has_changes; int diff_from_contents; scalar_t__ reverse_diff; } ;
struct diff_options {TYPE_1__ flags; int prefix_length; scalar_t__ prefix; } ;
struct diff_filespec {unsigned int dirty_submodule; } ;


 scalar_t__ S_ISGITLINK (unsigned int) ;
 struct diff_filespec* alloc_filespec (char const*) ;
 int diff_queue (int *,struct diff_filespec*,struct diff_filespec*) ;
 int diff_queued_diff ;
 int fill_filespec (struct diff_filespec*,struct object_id const*,int,unsigned int) ;
 scalar_t__ is_submodule_ignored (char const*,struct diff_options*) ;
 scalar_t__ strncmp (char const*,scalar_t__,int ) ;

void diff_addremove(struct diff_options *options,
      int addremove, unsigned mode,
      const struct object_id *oid,
      int oid_valid,
      const char *concatpath, unsigned dirty_submodule)
{
 struct diff_filespec *one, *two;

 if (S_ISGITLINK(mode) && is_submodule_ignored(concatpath, options))
  return;
 if (options->flags.reverse_diff)
  addremove = (addremove == '+' ? '-' :
        addremove == '-' ? '+' : addremove);

 if (options->prefix &&
     strncmp(concatpath, options->prefix, options->prefix_length))
  return;

 one = alloc_filespec(concatpath);
 two = alloc_filespec(concatpath);

 if (addremove != '+')
  fill_filespec(one, oid, oid_valid, mode);
 if (addremove != '-') {
  fill_filespec(two, oid, oid_valid, mode);
  two->dirty_submodule = dirty_submodule;
 }

 diff_queue(&diff_queued_diff, one, two);
 if (!options->flags.diff_from_contents)
  options->flags.has_changes = 1;
}
