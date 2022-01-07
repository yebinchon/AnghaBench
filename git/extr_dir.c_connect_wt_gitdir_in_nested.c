
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submodule {int name; int path; } ;
struct strbuf {int buf; } ;
struct repository {TYPE_1__* index; int gitdir; } ;
struct cache_entry {int name; int ce_mode; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;


 struct strbuf STRBUF_INIT ;
 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 int connect_work_tree_and_git_dir (int ,int ,int) ;
 int die (int ,int ) ;
 int is_submodule_active (struct repository*,int ) ;
 int null_oid ;
 int repo_clear (struct repository*) ;
 scalar_t__ repo_init (struct repository*,char const*,char const*) ;
 scalar_t__ repo_read_index (struct repository*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strcmp (int ,int ) ;
 struct submodule* submodule_from_path (struct repository*,int *,int ) ;

__attribute__((used)) static void connect_wt_gitdir_in_nested(const char *sub_worktree,
     const char *sub_gitdir)
{
 int i;
 struct repository subrepo;
 struct strbuf sub_wt = STRBUF_INIT;
 struct strbuf sub_gd = STRBUF_INIT;

 const struct submodule *sub;


 if (repo_init(&subrepo, sub_gitdir, sub_worktree))
  return;

 if (repo_read_index(&subrepo) < 0)
  die(_("index file corrupt in repo %s"), subrepo.gitdir);

 for (i = 0; i < subrepo.index->cache_nr; i++) {
  const struct cache_entry *ce = subrepo.index->cache[i];

  if (!S_ISGITLINK(ce->ce_mode))
   continue;

  while (i + 1 < subrepo.index->cache_nr &&
         !strcmp(ce->name, subrepo.index->cache[i + 1]->name))




   i++;

  sub = submodule_from_path(&subrepo, &null_oid, ce->name);
  if (!sub || !is_submodule_active(&subrepo, ce->name))

   continue;

  strbuf_reset(&sub_wt);
  strbuf_reset(&sub_gd);
  strbuf_addf(&sub_wt, "%s/%s", sub_worktree, sub->path);
  strbuf_addf(&sub_gd, "%s/modules/%s", sub_gitdir, sub->name);

  connect_work_tree_and_git_dir(sub_wt.buf, sub_gd.buf, 1);
 }
 strbuf_release(&sub_wt);
 strbuf_release(&sub_gd);
 repo_clear(&subrepo);
}
