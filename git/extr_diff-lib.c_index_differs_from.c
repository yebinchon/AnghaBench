
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct setup_revision_opt {char const* def; } ;
struct TYPE_4__ {int quick; int exit_with_status; scalar_t__ has_changes; } ;
struct TYPE_3__ {int ita_invisible_in_index; TYPE_2__ flags; } ;
struct rev_info {TYPE_1__ diffopt; int pending; } ;
struct repository {int dummy; } ;
struct diff_flags {int dummy; } ;
typedef int opt ;


 int diff_flags_or (TYPE_2__*,struct diff_flags const*) ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int object_array_clear (int *) ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 int run_diff_index (struct rev_info*,int) ;
 int setup_revisions (int ,int *,struct rev_info*,struct setup_revision_opt*) ;

int index_differs_from(struct repository *r,
         const char *def, const struct diff_flags *flags,
         int ita_invisible_in_index)
{
 struct rev_info rev;
 struct setup_revision_opt opt;

 repo_init_revisions(r, &rev, ((void*)0));
 memset(&opt, 0, sizeof(opt));
 opt.def = def;
 setup_revisions(0, ((void*)0), &rev, &opt);
 rev.diffopt.flags.quick = 1;
 rev.diffopt.flags.exit_with_status = 1;
 if (flags)
  diff_flags_or(&rev.diffopt.flags, flags);
 rev.diffopt.ita_invisible_in_index = ita_invisible_in_index;
 run_diff_index(&rev, 1);
 object_array_clear(&rev.pending);
 return (rev.diffopt.flags.has_changes != 0);
}
