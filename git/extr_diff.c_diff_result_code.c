
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ check_failed; scalar_t__ has_changes; scalar_t__ exit_with_status; } ;
struct diff_options {int output_format; TYPE_1__ flags; int degraded_cc_to_c; int needed_rename_limit; } ;


 int DIFF_FORMAT_CHECKDIFF ;
 int diff_warn_rename_limit (char*,int ,int ) ;

int diff_result_code(struct diff_options *opt, int status)
{
 int result = 0;

 diff_warn_rename_limit("diff.renameLimit",
          opt->needed_rename_limit,
          opt->degraded_cc_to_c);
 if (!opt->flags.exit_with_status &&
     !(opt->output_format & DIFF_FORMAT_CHECKDIFF))
  return status;
 if (opt->flags.exit_with_status &&
     opt->flags.has_changes)
  result |= 01;
 if ((opt->output_format & DIFF_FORMAT_CHECKDIFF) &&
     opt->flags.check_failed)
  result |= 02;
 return result;
}
