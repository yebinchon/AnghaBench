
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {struct cache_tree* cache_tree; } ;
struct cache_tree {int dummy; } ;


 int WRITE_TREE_DRY_RUN ;
 int active_cache_tree ;
 struct cache_tree* cache_tree () ;
 int cache_tree_update (struct index_state*,int ) ;
 int die (char*) ;
 int dump_cache_tree (int ,struct cache_tree*,char*) ;
 scalar_t__ read_cache () ;
 int setup_git_directory () ;
 struct index_state the_index ;

int cmd__dump_cache_tree(int ac, const char **av)
{
 struct index_state istate;
 struct cache_tree *another = cache_tree();
 setup_git_directory();
 if (read_cache() < 0)
  die("unable to read index file");
 istate = the_index;
 istate.cache_tree = another;
 cache_tree_update(&istate, WRITE_TREE_DRY_RUN);
 return dump_cache_tree(active_cache_tree, another, "");
}
