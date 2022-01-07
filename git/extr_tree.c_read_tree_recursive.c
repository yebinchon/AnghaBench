
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct pathspec {int dummy; } ;
typedef int read_tree_fn_t ;


 struct strbuf STRBUF_INIT ;
 int read_tree_1 (struct repository*,struct tree*,struct strbuf*,int,struct pathspec const*,int ,void*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;

int read_tree_recursive(struct repository *r,
   struct tree *tree,
   const char *base, int baselen,
   int stage, const struct pathspec *pathspec,
   read_tree_fn_t fn, void *context)
{
 struct strbuf sb = STRBUF_INIT;
 int ret;

 strbuf_add(&sb, base, baselen);
 ret = read_tree_1(r, tree, &sb, stage, pathspec, fn, context);
 strbuf_release(&sb);
 return ret;
}
