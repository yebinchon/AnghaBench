
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_2__ {int rename_empty; } ;
struct diff_options {char* output_indicators; char line_termination; int break_opt; int rename_limit; char* a_prefix; char* b_prefix; int color_moved_ws_handling; int color_moved; int orderfile; int xdl_opts; int detect_rename; int use_color; int add_remove; int change; int * objfind; TYPE_1__ flags; int ws_error_highlight; int interhunkcontext; int context; int dirstat_permille; int abbrev; struct repository* repo; int file; } ;


 int DEFAULT_ABBREV ;
 int DIFF_XDL_SET (struct diff_options*,int ) ;
 int INDENT_HEURISTIC ;
 size_t OUTPUT_INDICATOR_CONTEXT ;
 size_t OUTPUT_INDICATOR_NEW ;
 size_t OUTPUT_INDICATOR_OLD ;
 int default_diff_options ;
 int diff_addremove ;
 int diff_algorithm ;
 int diff_change ;
 int diff_color_moved_default ;
 int diff_color_moved_ws_default ;
 int diff_context_default ;
 int diff_detect_rename_default ;
 int diff_dirstat_permille_default ;
 scalar_t__ diff_indent_heuristic ;
 int diff_interhunk_context_default ;
 int diff_mnemonic_prefix ;
 scalar_t__ diff_no_prefix ;
 int diff_order_file_cfg ;
 int diff_use_color_default ;
 int memcpy (struct diff_options*,int *,int) ;
 int prep_parse_options (struct diff_options*) ;
 int stdout ;
 int ws_error_highlight_default ;

void repo_diff_setup(struct repository *r, struct diff_options *options)
{
 memcpy(options, &default_diff_options, sizeof(*options));

 options->file = stdout;
 options->repo = r;

 options->output_indicators[OUTPUT_INDICATOR_NEW] = '+';
 options->output_indicators[OUTPUT_INDICATOR_OLD] = '-';
 options->output_indicators[OUTPUT_INDICATOR_CONTEXT] = ' ';
 options->abbrev = DEFAULT_ABBREV;
 options->line_termination = '\n';
 options->break_opt = -1;
 options->rename_limit = -1;
 options->dirstat_permille = diff_dirstat_permille_default;
 options->context = diff_context_default;
 options->interhunkcontext = diff_interhunk_context_default;
 options->ws_error_highlight = ws_error_highlight_default;
 options->flags.rename_empty = 1;
 options->objfind = ((void*)0);


 options->change = diff_change;
 options->add_remove = diff_addremove;
 options->use_color = diff_use_color_default;
 options->detect_rename = diff_detect_rename_default;
 options->xdl_opts |= diff_algorithm;
 if (diff_indent_heuristic)
  DIFF_XDL_SET(options, INDENT_HEURISTIC);

 options->orderfile = diff_order_file_cfg;

 if (diff_no_prefix) {
  options->a_prefix = options->b_prefix = "";
 } else if (!diff_mnemonic_prefix) {
  options->a_prefix = "a/";
  options->b_prefix = "b/";
 }

 options->color_moved = diff_color_moved_default;
 options->color_moved_ws_handling = diff_color_moved_ws_default;

 prep_parse_options(options);
}
