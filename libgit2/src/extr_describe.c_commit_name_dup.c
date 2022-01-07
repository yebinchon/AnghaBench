
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {struct commit_name* path; int * tag; } ;


 int GIT_ERROR_CHECK_ALLOC (struct commit_name*) ;
 struct commit_name* git__malloc (int) ;
 struct commit_name* git__strdup (struct commit_name*) ;
 scalar_t__ git_tag_dup (int **,int *) ;
 int memcpy (struct commit_name*,struct commit_name*,int) ;

__attribute__((used)) static int commit_name_dup(struct commit_name **out, struct commit_name *in)
{
 struct commit_name *name;

 name = git__malloc(sizeof(struct commit_name));
 GIT_ERROR_CHECK_ALLOC(name);

 memcpy(name, in, sizeof(struct commit_name));
 name->tag = ((void*)0);
 name->path = ((void*)0);

 if (in->tag && git_tag_dup(&name->tag, in->tag) < 0)
  return -1;

 name->path = git__strdup(in->path);
 GIT_ERROR_CHECK_ALLOC(name->path);

 *out = name;
 return 0;
}
