
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_pushf (struct argv_array*,char*,char*) ;
 int free (char*) ;
 scalar_t__ read_author_script (int ,char**,char**,char**,int ) ;
 int rebase_path_author_script () ;

__attribute__((used)) static int read_env_script(struct argv_array *env)
{
 char *name, *email, *date;

 if (read_author_script(rebase_path_author_script(),
          &name, &email, &date, 0))
  return -1;

 argv_array_pushf(env, "GIT_AUTHOR_NAME=%s", name);
 argv_array_pushf(env, "GIT_AUTHOR_EMAIL=%s", email);
 argv_array_pushf(env, "GIT_AUTHOR_DATE=%s", date);
 free(name);
 free(email);
 free(date);

 return 0;
}
