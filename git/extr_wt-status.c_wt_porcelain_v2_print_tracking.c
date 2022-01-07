
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* onto; char* detached_from; scalar_t__ rebase_interactive_in_progress; scalar_t__ rebase_in_progress; } ;
struct wt_status {int fp; int ahead_behind_flags; int branch; TYPE_1__ state; int oid_commit; scalar_t__ is_initial; scalar_t__ null_termination; } ;
struct branch {int dummy; } ;


 struct branch* branch_get (char const*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* oid_to_hex (int *) ;
 char* shorten_unambiguous_ref (char const*,int ) ;
 int skip_prefix (int ,char*,char const**) ;
 int stat_tracking_info (struct branch*,int*,int*,char const**,int ,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void wt_porcelain_v2_print_tracking(struct wt_status *s)
{
 struct branch *branch;
 const char *base;
 const char *branch_name;
 int ab_info, nr_ahead, nr_behind;
 char eol = s->null_termination ? '\0' : '\n';

 fprintf(s->fp, "# branch.oid %s%c",
   (s->is_initial ? "(initial)" : oid_to_hex(&s->oid_commit)),
   eol);

 if (!s->branch)
  fprintf(s->fp, "# branch.head %s%c", "(unknown)", eol);
 else {
  if (!strcmp(s->branch, "HEAD")) {
   fprintf(s->fp, "# branch.head %s%c", "(detached)", eol);

   if (s->state.rebase_in_progress ||
       s->state.rebase_interactive_in_progress)
    branch_name = s->state.onto;
   else if (s->state.detached_from)
    branch_name = s->state.detached_from;
   else
    branch_name = "";
  } else {
   branch_name = ((void*)0);
   skip_prefix(s->branch, "refs/heads/", &branch_name);

   fprintf(s->fp, "# branch.head %s%c", branch_name, eol);
  }


  branch = branch_get(branch_name);
  base = ((void*)0);
  ab_info = stat_tracking_info(branch, &nr_ahead, &nr_behind,
          &base, 0, s->ahead_behind_flags);
  if (base) {
   base = shorten_unambiguous_ref(base, 0);
   fprintf(s->fp, "# branch.upstream %s%c", base, eol);
   free((char *)base);

   if (ab_info > 0) {

    if (nr_ahead || nr_behind)
     fprintf(s->fp, "# branch.ab +%d -%d%c",
      nr_ahead, nr_behind, eol);
    else
     fprintf(s->fp, "# branch.ab +? -?%c",
      eol);
   } else if (!ab_info) {

    fprintf(s->fp, "# branch.ab +0 -0%c", eol);
   }
  }
 }
}
