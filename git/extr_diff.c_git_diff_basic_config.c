
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_3__ {int dirstat_permille; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int color_parse (char const*,int ) ;
 int config_error_nonbool (char const*) ;
 TYPE_1__ default_diff_options ;
 int * diff_colors ;
 int diff_dirstat_permille_default ;
 int diff_rename_limit_default ;
 int diff_suppress_blank_empty ;
 int git_config_bool (char const*,char const*) ;
 int git_config_int (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ git_diff_heuristic_config (char const*,char const*,void*) ;
 int parse_diff_color_slot (char const*) ;
 scalar_t__ parse_dirstat_params (TYPE_1__*,char const*,struct strbuf*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ userdiff_config (char const*,char const*) ;
 int warning (int ,int ) ;

int git_diff_basic_config(const char *var, const char *value, void *cb)
{
 const char *name;

 if (!strcmp(var, "diff.renamelimit")) {
  diff_rename_limit_default = git_config_int(var, value);
  return 0;
 }

 if (userdiff_config(var, value) < 0)
  return -1;

 if (skip_prefix(var, "diff.color.", &name) ||
     skip_prefix(var, "color.diff.", &name)) {
  int slot = parse_diff_color_slot(name);
  if (slot < 0)
   return 0;
  if (!value)
   return config_error_nonbool(var);
  return color_parse(value, diff_colors[slot]);
 }


 if (!strcmp(var, "diff.suppressblankempty") ||

   !strcmp(var, "diff.suppress-blank-empty")) {
  diff_suppress_blank_empty = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp(var, "diff.dirstat")) {
  struct strbuf errmsg = STRBUF_INIT;
  default_diff_options.dirstat_permille = diff_dirstat_permille_default;
  if (parse_dirstat_params(&default_diff_options, value, &errmsg))
   warning(_("Found errors in 'diff.dirstat' config variable:\n%s"),
    errmsg.buf);
  strbuf_release(&errmsg);
  diff_dirstat_permille_default = default_diff_options.dirstat_permille;
  return 0;
 }

 if (git_diff_heuristic_config(var, value, cb) < 0)
  return -1;

 return git_default_config(var, value, cb);
}
