
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct submodule {char* name; } ;
struct strbuf {int buf; } ;
struct TYPE_3__ {int index; } ;


 int GITMODULES_FILE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ) ;
 int file_exists (int ) ;
 scalar_t__ git_config_rename_section_in_file (int ,int ,int *) ;
 scalar_t__ is_gitmodules_unmerged (int ) ;
 int null_oid ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (TYPE_1__*,int *,char const*) ;
 TYPE_1__* the_repository ;
 int warning (int ,char const*) ;

int remove_path_from_gitmodules(const char *path)
{
 struct strbuf sect = STRBUF_INIT;
 const struct submodule *submodule;

 if (!file_exists(GITMODULES_FILE))
  return -1;

 if (is_gitmodules_unmerged(the_repository->index))
  die(_("Cannot change unmerged .gitmodules, resolve merge conflicts first"));

 submodule = submodule_from_path(the_repository, &null_oid, path);
 if (!submodule || !submodule->name) {
  warning(_("Could not find section in .gitmodules where path=%s"), path);
  return -1;
 }
 strbuf_addstr(&sect, "submodule.");
 strbuf_addstr(&sect, submodule->name);
 if (git_config_rename_section_in_file(GITMODULES_FILE, sect.buf, ((void*)0)) < 0) {

  warning(_("Could not remove .gitmodules entry for %s"), path);
  strbuf_release(&sect);
  return -1;
 }
 strbuf_release(&sect);
 return 0;
}
