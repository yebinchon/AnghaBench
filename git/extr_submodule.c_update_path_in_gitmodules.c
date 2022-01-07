
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
 int config_set_in_gitmodules_file_gently (int ,char const*) ;
 int die (int ) ;
 int file_exists (int ) ;
 scalar_t__ is_gitmodules_unmerged (int ) ;
 int null_oid ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (TYPE_1__*,int *,char const*) ;
 TYPE_1__* the_repository ;
 int warning (int ,char const*) ;

int update_path_in_gitmodules(const char *oldpath, const char *newpath)
{
 struct strbuf entry = STRBUF_INIT;
 const struct submodule *submodule;
 int ret;

 if (!file_exists(GITMODULES_FILE))
  return -1;

 if (is_gitmodules_unmerged(the_repository->index))
  die(_("Cannot change unmerged .gitmodules, resolve merge conflicts first"));

 submodule = submodule_from_path(the_repository, &null_oid, oldpath);
 if (!submodule || !submodule->name) {
  warning(_("Could not find section in .gitmodules where path=%s"), oldpath);
  return -1;
 }
 strbuf_addstr(&entry, "submodule.");
 strbuf_addstr(&entry, submodule->name);
 strbuf_addstr(&entry, ".path");
 ret = config_set_in_gitmodules_file_gently(entry.buf, newpath);
 strbuf_release(&entry);
 return ret;
}
