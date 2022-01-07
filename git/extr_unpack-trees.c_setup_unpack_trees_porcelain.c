
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {char** msgs; int show_all_errors; TYPE_1__* unpack_rejects; int msgs_to_free; } ;
struct TYPE_2__ {int strdup_strings; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t ERROR_BIND_OVERLAP ;
 size_t ERROR_NOT_UPTODATE_DIR ;
 size_t ERROR_NOT_UPTODATE_FILE ;
 size_t ERROR_SPARSE_NOT_UPTODATE_FILE ;
 size_t ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN ;
 size_t ERROR_WOULD_LOSE_ORPHANED_REMOVED ;
 size_t ERROR_WOULD_LOSE_SUBMODULE ;
 size_t ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ;
 size_t ERROR_WOULD_LOSE_UNTRACKED_REMOVED ;
 size_t ERROR_WOULD_OVERWRITE ;
 char* _ (char*) ;
 scalar_t__ advice_commit_before_merge ;
 int argv_array_init (int *) ;
 char* argv_array_pushf (int *,char const*,char const*,char const*) ;
 int strcmp (char const*,char*) ;

void setup_unpack_trees_porcelain(struct unpack_trees_options *opts,
      const char *cmd)
{
 int i;
 const char **msgs = opts->msgs;
 const char *msg;

 argv_array_init(&opts->msgs_to_free);

 if (!strcmp(cmd, "checkout"))
  msg = advice_commit_before_merge
        ? _("Your local changes to the following files would be overwritten by checkout:\n%%s"
     "Please commit your changes or stash them before you switch branches.")
        : _("Your local changes to the following files would be overwritten by checkout:\n%%s");
 else if (!strcmp(cmd, "merge"))
  msg = advice_commit_before_merge
        ? _("Your local changes to the following files would be overwritten by merge:\n%%s"
     "Please commit your changes or stash them before you merge.")
        : _("Your local changes to the following files would be overwritten by merge:\n%%s");
 else
  msg = advice_commit_before_merge
        ? _("Your local changes to the following files would be overwritten by %s:\n%%s"
     "Please commit your changes or stash them before you %s.")
        : _("Your local changes to the following files would be overwritten by %s:\n%%s");
 msgs[ERROR_WOULD_OVERWRITE] = msgs[ERROR_NOT_UPTODATE_FILE] =
  argv_array_pushf(&opts->msgs_to_free, msg, cmd, cmd);

 msgs[ERROR_NOT_UPTODATE_DIR] =
  _("Updating the following directories would lose untracked files in them:\n%s");

 if (!strcmp(cmd, "checkout"))
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be removed by checkout:\n%%s"
     "Please move or remove them before you switch branches.")
        : _("The following untracked working tree files would be removed by checkout:\n%%s");
 else if (!strcmp(cmd, "merge"))
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be removed by merge:\n%%s"
     "Please move or remove them before you merge.")
        : _("The following untracked working tree files would be removed by merge:\n%%s");
 else
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be removed by %s:\n%%s"
     "Please move or remove them before you %s.")
        : _("The following untracked working tree files would be removed by %s:\n%%s");
 msgs[ERROR_WOULD_LOSE_UNTRACKED_REMOVED] =
  argv_array_pushf(&opts->msgs_to_free, msg, cmd, cmd);

 if (!strcmp(cmd, "checkout"))
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be overwritten by checkout:\n%%s"
     "Please move or remove them before you switch branches.")
        : _("The following untracked working tree files would be overwritten by checkout:\n%%s");
 else if (!strcmp(cmd, "merge"))
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be overwritten by merge:\n%%s"
     "Please move or remove them before you merge.")
        : _("The following untracked working tree files would be overwritten by merge:\n%%s");
 else
  msg = advice_commit_before_merge
        ? _("The following untracked working tree files would be overwritten by %s:\n%%s"
     "Please move or remove them before you %s.")
        : _("The following untracked working tree files would be overwritten by %s:\n%%s");
 msgs[ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN] =
  argv_array_pushf(&opts->msgs_to_free, msg, cmd, cmd);





 msgs[ERROR_BIND_OVERLAP] = _("Entry '%s' overlaps with '%s'.  Cannot bind.");

 msgs[ERROR_SPARSE_NOT_UPTODATE_FILE] =
  _("Cannot update sparse checkout: the following entries are not up to date:\n%s");
 msgs[ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN] =
  _("The following working tree files would be overwritten by sparse checkout update:\n%s");
 msgs[ERROR_WOULD_LOSE_ORPHANED_REMOVED] =
  _("The following working tree files would be removed by sparse checkout update:\n%s");
 msgs[ERROR_WOULD_LOSE_SUBMODULE] =
  _("Cannot update submodule:\n%s");

 opts->show_all_errors = 1;

 for (i = 0; i < ARRAY_SIZE(opts->unpack_rejects); i++)
  opts->unpack_rejects[i].strdup_strings = 1;
}
