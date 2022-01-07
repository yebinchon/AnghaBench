
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct merge_options {char const* branch1; int recursive_variant; } ;
struct TYPE_4__ {int mode; int oid; } ;
struct merge_file_info {int merge; int clean; TYPE_1__ blob; } ;
struct diff_filespec {int mode; int oid; int path; } ;
struct TYPE_5__ {int ptr; int size; } ;
typedef TYPE_2__ mmbuffer_t ;


 int BUG (char*) ;



 int S_IFMT ;
 scalar_t__ S_ISGITLINK (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int _ (char*) ;
 int blob_type ;
 int err (struct merge_options*,int ,...) ;
 int free (int ) ;
 int merge_3way (struct merge_options*,TYPE_2__*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,char const*,char const*,int const) ;
 int merge_submodule (struct merge_options*,int *,int ,int *,int *,int *) ;
 scalar_t__ oid_eq (int *,int *) ;
 int oidcpy (int *,int *) ;
 int output (struct merge_options*,int,int ,char const*) ;
 scalar_t__ write_object_file (int ,int ,int ,int *) ;

__attribute__((used)) static int merge_mode_and_contents(struct merge_options *opt,
       const struct diff_filespec *o,
       const struct diff_filespec *a,
       const struct diff_filespec *b,
       const char *filename,
       const char *branch1,
       const char *branch2,
       const int extra_marker_size,
       struct merge_file_info *result)
{
 if (opt->branch1 != branch1) {





  return merge_mode_and_contents(opt, o, b, a,
            filename,
            branch2, branch1,
            extra_marker_size, result);
 }

 result->merge = 0;
 result->clean = 1;

 if ((S_IFMT & a->mode) != (S_IFMT & b->mode)) {
  result->clean = 0;
  if (S_ISREG(a->mode)) {
   result->blob.mode = a->mode;
   oidcpy(&result->blob.oid, &a->oid);
  } else {
   result->blob.mode = b->mode;
   oidcpy(&result->blob.oid, &b->oid);
  }
 } else {
  if (!oid_eq(&a->oid, &o->oid) && !oid_eq(&b->oid, &o->oid))
   result->merge = 1;




  if (a->mode == b->mode || a->mode == o->mode)
   result->blob.mode = b->mode;
  else {
   result->blob.mode = a->mode;
   if (b->mode != o->mode) {
    result->clean = 0;
    result->merge = 1;
   }
  }

  if (oid_eq(&a->oid, &b->oid) || oid_eq(&a->oid, &o->oid))
   oidcpy(&result->blob.oid, &b->oid);
  else if (oid_eq(&b->oid, &o->oid))
   oidcpy(&result->blob.oid, &a->oid);
  else if (S_ISREG(a->mode)) {
   mmbuffer_t result_buf;
   int ret = 0, merge_status;

   merge_status = merge_3way(opt, &result_buf, o, a, b,
        branch1, branch2,
        extra_marker_size);

   if ((merge_status < 0) || !result_buf.ptr)
    ret = err(opt, _("Failed to execute internal merge"));

   if (!ret &&
       write_object_file(result_buf.ptr, result_buf.size,
           blob_type, &result->blob.oid))
    ret = err(opt, _("Unable to add %s to database"),
       a->path);

   free(result_buf.ptr);
   if (ret)
    return ret;
   result->clean = (merge_status == 0);
  } else if (S_ISGITLINK(a->mode)) {
   result->clean = merge_submodule(opt, &result->blob.oid,
       o->path,
       &o->oid,
       &a->oid,
       &b->oid);
  } else if (S_ISLNK(a->mode)) {
   switch (opt->recursive_variant) {
   case 130:
    oidcpy(&result->blob.oid, &a->oid);
    if (!oid_eq(&a->oid, &b->oid))
     result->clean = 0;
    break;
   case 129:
    oidcpy(&result->blob.oid, &a->oid);
    break;
   case 128:
    oidcpy(&result->blob.oid, &b->oid);
    break;
   }
  } else
   BUG("unsupported object type in the tree");
 }

 if (result->merge)
  output(opt, 2, _("Auto-merging %s"), filename);

 return 0;
}
