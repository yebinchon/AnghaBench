
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_rewrite_cfg {char* cmd; int refs; int refs_from_env; int combine; int mode_from_env; int enabled; } ;


 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int error (int ,char const*) ;
 int git_config_bool (char const*,char const*) ;
 int parse_combine_notes_fn (char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int string_list_add_refs_by_glob (int ,char const*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static int notes_rewrite_config(const char *k, const char *v, void *cb)
{
 struct notes_rewrite_cfg *c = cb;
 if (starts_with(k, "notes.rewrite.") && !strcmp(k+14, c->cmd)) {
  c->enabled = git_config_bool(k, v);
  return 0;
 } else if (!c->mode_from_env && !strcmp(k, "notes.rewritemode")) {
  if (!v)
   return config_error_nonbool(k);
  c->combine = parse_combine_notes_fn(v);
  if (!c->combine) {
   error(_("Bad notes.rewriteMode value: '%s'"), v);
   return 1;
  }
  return 0;
 } else if (!c->refs_from_env && !strcmp(k, "notes.rewriteref")) {


  if (starts_with(v, "refs/notes/"))
   string_list_add_refs_by_glob(c->refs, v);
  else
   warning(_("Refusing to rewrite notes in %s"
    " (outside of refs/notes/)"), v);
  return 0;
 }

 return 0;
}
