
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb ;


 int assert (int) ;
 scalar_t__ git_odb__add_default_backends (int *,char const*,int ,int ) ;
 int git_odb_free (int *) ;
 scalar_t__ git_odb_new (int **) ;

int git_odb_open(git_odb **out, const char *objects_dir)
{
 git_odb *db;

 assert(out && objects_dir);

 *out = ((void*)0);

 if (git_odb_new(&db) < 0)
  return -1;

 if (git_odb__add_default_backends(db, objects_dir, 0, 0) < 0) {
  git_odb_free(db);
  return -1;
 }

 *out = db;
 return 0;
}
