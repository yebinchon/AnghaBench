
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct repository {int commondir; scalar_t__ different_commondir; TYPE_2__* objects; int index_file; int graft_file; } ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {scalar_t__ path; } ;


 scalar_t__ dir_prefix (char const*,char*) ;
 scalar_t__ git_hooks_path ;
 scalar_t__ is_dir_file (char const*,char*,char*) ;
 int replace_dir (struct strbuf*,int,scalar_t__) ;
 int strbuf_splice (struct strbuf*,int ,int ,int ,int ) ;
 int strcmp (char const*,char*) ;
 int strlen (int ) ;
 int update_common_dir (struct strbuf*,int,int ) ;

__attribute__((used)) static void adjust_git_path(const struct repository *repo,
       struct strbuf *buf, int git_dir_len)
{
 const char *base = buf->buf + git_dir_len;
 if (is_dir_file(base, "info", "grafts"))
  strbuf_splice(buf, 0, buf->len,
         repo->graft_file, strlen(repo->graft_file));
 else if (!strcmp(base, "index"))
  strbuf_splice(buf, 0, buf->len,
         repo->index_file, strlen(repo->index_file));
 else if (dir_prefix(base, "objects"))
  replace_dir(buf, git_dir_len + 7, repo->objects->odb->path);
 else if (git_hooks_path && dir_prefix(base, "hooks"))
  replace_dir(buf, git_dir_len + 5, git_hooks_path);
 else if (repo->different_commondir)
  update_common_dir(buf, git_dir_len, repo->commondir);
}
