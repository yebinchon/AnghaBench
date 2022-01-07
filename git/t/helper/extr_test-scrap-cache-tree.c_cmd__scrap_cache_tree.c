
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int * active_cache_tree ;
 int die (char*) ;
 int hold_locked_index (struct lock_file*,int ) ;
 scalar_t__ read_cache () ;
 int setup_git_directory () ;
 int the_index ;
 scalar_t__ write_locked_index (int *,struct lock_file*,int ) ;

int cmd__scrap_cache_tree(int ac, const char **av)
{
 struct lock_file index_lock = LOCK_INIT;

 setup_git_directory();
 hold_locked_index(&index_lock, LOCK_DIE_ON_ERROR);
 if (read_cache() < 0)
  die("unable to read index file");
 active_cache_tree = ((void*)0);
 if (write_locked_index(&the_index, &index_lock, COMMIT_LOCK))
  die("unable to write index file");
 return 0;
}
