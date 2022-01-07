
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_gitdir_args {void* alternate_db; void* index_file; void* graft_file; void* object_dir; void* commondir; int * member_0; } ;
struct argv_array {int dummy; } ;


 int ALTERNATE_DB_ENVIRONMENT ;
 struct argv_array ARGV_ARRAY_INIT ;
 int DB_ENVIRONMENT ;
 int GIT_COMMON_DIR_ENVIRONMENT ;
 int GIT_NAMESPACE_ENVIRONMENT ;
 int GIT_REPLACE_REF_BASE_ENVIRONMENT ;
 int GIT_SHALLOW_FILE_ENVIRONMENT ;
 int GRAFT_ENVIRONMENT ;
 int INDEX_ENVIRONMENT ;
 int NO_REPLACE_OBJECTS_ENVIRONMENT ;
 int argv_array_clear (struct argv_array*) ;
 int expand_namespace (char*) ;
 int free (int ) ;
 char* getenv (int ) ;
 void* getenv_safe (struct argv_array*,int ) ;
 int git_namespace ;
 int git_replace_ref_base ;
 scalar_t__ read_replace_refs ;
 int repo_set_gitdir (int ,char const*,struct set_gitdir_args*) ;
 int set_alternate_shallow_file (int ,char const*,int ) ;
 int the_repository ;
 int xstrdup (char const*) ;

void setup_git_env(const char *git_dir)
{
 const char *shallow_file;
 const char *replace_ref_base;
 struct set_gitdir_args args = { ((void*)0) };
 struct argv_array to_free = ARGV_ARRAY_INIT;

 args.commondir = getenv_safe(&to_free, GIT_COMMON_DIR_ENVIRONMENT);
 args.object_dir = getenv_safe(&to_free, DB_ENVIRONMENT);
 args.graft_file = getenv_safe(&to_free, GRAFT_ENVIRONMENT);
 args.index_file = getenv_safe(&to_free, INDEX_ENVIRONMENT);
 args.alternate_db = getenv_safe(&to_free, ALTERNATE_DB_ENVIRONMENT);
 repo_set_gitdir(the_repository, git_dir, &args);
 argv_array_clear(&to_free);

 if (getenv(NO_REPLACE_OBJECTS_ENVIRONMENT))
  read_replace_refs = 0;
 replace_ref_base = getenv(GIT_REPLACE_REF_BASE_ENVIRONMENT);
 free(git_replace_ref_base);
 git_replace_ref_base = xstrdup(replace_ref_base ? replace_ref_base
         : "refs/replace/");
 free(git_namespace);
 git_namespace = expand_namespace(getenv(GIT_NAMESPACE_ENVIRONMENT));
 shallow_file = getenv(GIT_SHALLOW_FILE_ENVIRONMENT);
 if (shallow_file)
  set_alternate_shallow_file(the_repository, shallow_file, 0);
}
