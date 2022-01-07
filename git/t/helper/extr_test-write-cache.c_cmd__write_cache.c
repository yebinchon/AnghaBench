
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int die (char*) ;
 int hold_locked_index (struct lock_file*,int ) ;
 int read_cache () ;
 int setup_git_directory () ;
 int strtol (char const*,int *,int ) ;
 int the_index ;
 scalar_t__ write_locked_index (int *,struct lock_file*,int ) ;

int cmd__write_cache(int argc, const char **argv)
{
 struct lock_file index_lock = LOCK_INIT;
 int i, cnt = 1;
 if (argc == 2)
  cnt = strtol(argv[1], ((void*)0), 0);
 setup_git_directory();
 read_cache();
 for (i = 0; i < cnt; i++) {
  hold_locked_index(&index_lock, LOCK_DIE_ON_ERROR);
  if (write_locked_index(&the_index, &index_lock, COMMIT_LOCK))
   die("unable to write index file");
 }

 return 0;
}
