
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* tag; struct TYPE_5__* name; struct TYPE_5__* path; } ;
typedef TYPE_1__ git_describe_result ;


 int git__free (TYPE_1__*) ;
 int git_tag_free (TYPE_1__*) ;

void git_describe_result_free(git_describe_result *result)
{
 if (result == ((void*)0))
  return;

 if (result->name) {
  git_tag_free(result->name->tag);
  git__free(result->name->path);
  git__free(result->name);
 }

 if (result->tag) {
  git_tag_free(result->tag->name->tag);
  git__free(result->tag->name->path);
  git__free(result->tag->name);
  git__free(result->tag);
 }

 git__free(result);
}
