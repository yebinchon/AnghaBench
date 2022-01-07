
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct possible_tag {int * name; } ;


 int GIT_ERROR_CHECK_ALLOC (struct possible_tag*) ;
 int commit_name_dup (int **,int *) ;
 int git__free (struct possible_tag*) ;
 struct possible_tag* git__malloc (int) ;
 int memcpy (struct possible_tag*,struct possible_tag*,int) ;

__attribute__((used)) static int possible_tag_dup(struct possible_tag **out, struct possible_tag *in)
{
 struct possible_tag *tag;
 int error;

 tag = git__malloc(sizeof(struct possible_tag));
 GIT_ERROR_CHECK_ALLOC(tag);

 memcpy(tag, in, sizeof(struct possible_tag));
 tag->name = ((void*)0);

 if ((error = commit_name_dup(&tag->name, in->name)) < 0) {
  git__free(tag);
  *out = ((void*)0);
  return error;
 }

 *out = tag;
 return 0;
}
