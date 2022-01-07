
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object {int dummy; } ;
struct TYPE_2__ {int parsed; } ;
struct commit {TYPE_1__ object; } ;


 struct commit* alloc_commit_node (struct repository*) ;
 int set_commit_tree (struct commit*,struct tree*) ;
 int set_merge_remote_desc (struct commit*,char const*,struct object*) ;

__attribute__((used)) static struct commit *make_virtual_commit(struct repository *repo,
       struct tree *tree,
       const char *comment)
{
 struct commit *commit = alloc_commit_node(repo);

 set_merge_remote_desc(commit, comment, (struct object *)commit);
 set_commit_tree(commit, tree);
 commit->object.parsed = 1;
 return commit;
}
