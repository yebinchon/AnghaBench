
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct pathspec {int dummy; } ;


 int preload_index (int ,struct pathspec const*,unsigned int) ;
 int repo_read_index (struct repository*) ;

int repo_read_index_preload(struct repository *repo,
       const struct pathspec *pathspec,
       unsigned int refresh_flags)
{
 int retval = repo_read_index(repo);

 preload_index(repo->index, pathspec, refresh_flags);
 return retval;
}
