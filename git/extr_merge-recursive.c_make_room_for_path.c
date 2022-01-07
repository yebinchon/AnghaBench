
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct merge_options {TYPE_2__* priv; } ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct TYPE_5__ {TYPE_3__ df_conflict_file_set; } ;
struct TYPE_4__ {char* string; } ;


 scalar_t__ ENOENT ;
 int SCLD_EXISTS ;
 char* _ (char*) ;
 int err (struct merge_options*,char const*,char const*,...) ;
 scalar_t__ errno ;
 int output (struct merge_options*,int,char*,char const*) ;
 int safe_create_leading_directories_const (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int unlink (char const*) ;
 int unsorted_string_list_delete_item (TYPE_3__*,int,int ) ;
 scalar_t__ would_lose_untracked (struct merge_options*,char const*) ;

__attribute__((used)) static int make_room_for_path(struct merge_options *opt, const char *path)
{
 int status, i;
 const char *msg = _("failed to create path '%s'%s");


 for (i = 0; i < opt->priv->df_conflict_file_set.nr; i++) {
  const char *df_path = opt->priv->df_conflict_file_set.items[i].string;
  size_t pathlen = strlen(path);
  size_t df_pathlen = strlen(df_path);
  if (df_pathlen < pathlen &&
      path[df_pathlen] == '/' &&
      strncmp(path, df_path, df_pathlen) == 0) {
   output(opt, 3,
          _("Removing %s to make room for subdirectory\n"),
          df_path);
   unlink(df_path);
   unsorted_string_list_delete_item(&opt->priv->df_conflict_file_set,
        i, 0);
   break;
  }
 }


 status = safe_create_leading_directories_const(path);
 if (status) {
  if (status == SCLD_EXISTS)

   return err(opt, msg, path, _(": perhaps a D/F conflict?"));
  return err(opt, msg, path, "");
 }





 if (would_lose_untracked(opt, path))
  return err(opt, _("refusing to lose untracked file at '%s'"),
      path);


 if (!unlink(path))
  return 0;

 if (errno == ENOENT)
  return 0;

 return err(opt, msg, path, _(": perhaps a D/F conflict?"));
}
