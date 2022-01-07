
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int connect_wt_gitdir_in_nested (char*,char*) ;
 int die (int ,int ) ;
 int free (char*) ;
 int git_config_set_in_file (int ,char*,int ) ;
 char* real_pathdup (char const*,int) ;
 int relative_path (char*,char*,struct strbuf*) ;
 scalar_t__ safe_create_leading_directories_const (int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int write_file (int ,char*,int ) ;

void connect_work_tree_and_git_dir(const char *work_tree_,
       const char *git_dir_,
       int recurse_into_nested)
{
 struct strbuf gitfile_sb = STRBUF_INIT;
 struct strbuf cfg_sb = STRBUF_INIT;
 struct strbuf rel_path = STRBUF_INIT;
 char *git_dir, *work_tree;


 strbuf_addf(&gitfile_sb, "%s/.git", work_tree_);
 if (safe_create_leading_directories_const(gitfile_sb.buf))
  die(_("could not create directories for %s"), gitfile_sb.buf);


 strbuf_addf(&cfg_sb, "%s/config", git_dir_);
 if (safe_create_leading_directories_const(cfg_sb.buf))
  die(_("could not create directories for %s"), cfg_sb.buf);

 git_dir = real_pathdup(git_dir_, 1);
 work_tree = real_pathdup(work_tree_, 1);


 write_file(gitfile_sb.buf, "gitdir: %s",
     relative_path(git_dir, work_tree, &rel_path));

 git_config_set_in_file(cfg_sb.buf, "core.worktree",
          relative_path(work_tree, git_dir, &rel_path));

 strbuf_release(&gitfile_sb);
 strbuf_release(&cfg_sb);
 strbuf_release(&rel_path);

 if (recurse_into_nested)
  connect_wt_gitdir_in_nested(work_tree, git_dir);

 free(work_tree);
 free(git_dir);
}
