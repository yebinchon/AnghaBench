
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_options {TYPE_2__* priv; TYPE_1__* repo; } ;
struct TYPE_4__ {int call_depth; } ;
struct TYPE_3__ {int index; } ;


 int _ (char*) ;
 scalar_t__ dir_in_way (int ,char const*,int,int ) ;
 int output (struct merge_options*,int,int ,char const*,char const*,...) ;
 char* unique_path (struct merge_options*,char const*,char const*) ;
 scalar_t__ would_lose_untracked (struct merge_options*,char const*) ;

__attribute__((used)) static char *find_path_for_conflict(struct merge_options *opt,
        const char *path,
        const char *branch1,
        const char *branch2)
{
 char *new_path = ((void*)0);
 if (dir_in_way(opt->repo->index, path, !opt->priv->call_depth, 0)) {
  new_path = unique_path(opt, path, branch1);
  output(opt, 1, _("%s is a directory in %s adding "
          "as %s instead"),
         path, branch2, new_path);
 } else if (would_lose_untracked(opt, path)) {
  new_path = unique_path(opt, path, branch1);
  output(opt, 1, _("Refusing to lose untracked file"
          " at %s; adding as %s instead"),
         path, new_path);
 }

 return new_path;
}
