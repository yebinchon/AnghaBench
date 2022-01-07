
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int BUG (char*) ;
 int file_exists (char const*) ;
 struct repository* the_repository ;

int repo_file_exists(struct repository *repo, const char *path)
{
 if (repo != the_repository)
  BUG("do not know how to check file existence in arbitrary repo");

 return file_exists(path);
}
