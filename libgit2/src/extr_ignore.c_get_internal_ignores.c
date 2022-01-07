
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int length; } ;
struct TYPE_7__ {TYPE_1__ rules; } ;
typedef TYPE_2__ git_attr_file ;


 int GIT_ATTR_FILE__IN_MEMORY ;
 int GIT_IGNORE_DEFAULT_RULES ;
 int GIT_IGNORE_INTERNAL ;
 int git_attr_cache__get (TYPE_2__**,int *,int *,int ,int *,int ,int *,int) ;
 int git_attr_cache__init (int *) ;
 int parse_ignore_file (int *,TYPE_2__*,int ,int) ;

__attribute__((used)) static int get_internal_ignores(git_attr_file **out, git_repository *repo)
{
 int error;

 if ((error = git_attr_cache__init(repo)) < 0)
  return error;

 error = git_attr_cache__get(out, repo, ((void*)0), GIT_ATTR_FILE__IN_MEMORY, ((void*)0),
        GIT_IGNORE_INTERNAL, ((void*)0), 0);


 if (!error && !(*out)->rules.length)
  error = parse_ignore_file(repo, *out, GIT_IGNORE_DEFAULT_RULES, 0);

 return error;
}
