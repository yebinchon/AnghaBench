
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_walk_context {int buf; int pb; } ;
typedef int git_tree_entry ;


 scalar_t__ GIT_OBJECT_COMMIT ;
 int git_buf_cstr (int *) ;
 int git_buf_puts (int *,int ) ;
 int git_buf_sets (int *,char const*) ;
 int git_packbuilder_insert (int ,int ,int ) ;
 int git_tree_entry_id (int const*) ;
 int git_tree_entry_name (int const*) ;
 scalar_t__ git_tree_entry_type (int const*) ;

__attribute__((used)) static int cb_tree_walk(
 const char *root, const git_tree_entry *entry, void *payload)
{
 int error;
 struct tree_walk_context *ctx = payload;


 if (git_tree_entry_type(entry) == GIT_OBJECT_COMMIT)
  return 0;

 if (!(error = git_buf_sets(&ctx->buf, root)) &&
  !(error = git_buf_puts(&ctx->buf, git_tree_entry_name(entry))))
  error = git_packbuilder_insert(
   ctx->pb, git_tree_entry_id(entry), git_buf_cstr(&ctx->buf));

 return error;
}
