
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct notes_merge_options {int verbosity; } ;


 int NOTES_MERGE_WORKTREE ;
 int REMOVE_DIR_KEEP_TOPLEVEL ;
 struct strbuf STRBUF_INIT ;
 int git_path_buf (struct strbuf*,int ) ;
 int printf (char*,char*) ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

int notes_merge_abort(struct notes_merge_options *o)
{





 struct strbuf buf = STRBUF_INIT;
 int ret;

 git_path_buf(&buf, NOTES_MERGE_WORKTREE);
 if (o->verbosity >= 3)
  printf("Removing notes merge worktree at %s/*\n", buf.buf);
 ret = remove_dir_recursively(&buf, REMOVE_DIR_KEEP_TOPLEVEL);
 strbuf_release(&buf);
 return ret;
}
