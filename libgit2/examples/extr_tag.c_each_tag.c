
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * repo; } ;
typedef TYPE_1__ tag_state ;
typedef int git_tag ;
typedef int git_repository ;
typedef int git_object ;
typedef int git_commit ;




 int check_lg2 (int ,char*,char const*) ;
 int git_object_free (int *) ;
 int git_object_type (int *) ;
 int git_revparse_single (int **,int *,char const*) ;
 int print_commit (int *,char const*,TYPE_1__*) ;
 int print_name (char const*) ;
 int print_tag (int *,TYPE_1__*) ;

__attribute__((used)) static int each_tag(const char *name, tag_state *state)
{
 git_repository *repo = state->repo;
 git_object *obj;

 check_lg2(git_revparse_single(&obj, repo, name),
   "Failed to lookup rev", name);

 switch (git_object_type(obj)) {
  case 128:
   print_tag((git_tag *) obj, state);
   break;
  case 129:
   print_commit((git_commit *) obj, name, state);
   break;
  default:
   print_name(name);
 }

 git_object_free(obj);
 return 0;
}
